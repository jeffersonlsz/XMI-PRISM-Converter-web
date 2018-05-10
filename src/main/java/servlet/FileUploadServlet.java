package servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name="UploadServlet", urlPatterns="/uploadFile", loadOnStartup=1)
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
	maxFileSize=1024*1024*10,      // 10MB
	maxRequestSize=1024*1024*50)   // 50MB
public class FileUploadServlet extends HttpServlet {

	/**
     * Name of the directory where uploaded files will be saved, relative to
     * the web application directory.
     */
    private static final String SAVE_DIR = "uploadFiles";
     
    /**
     * handles file upload
     */
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	
    	System.out.println("File has been uploadedd " + request.getServletContext().getRealPath(""));
//        // gets absolute path of the web application
        String appPath = request.getServletContext().getRealPath("");
//        // constructs path of the directory to save uploaded file
        String savePath = appPath  + SAVE_DIR;
        
        System.out.println("save path: " + savePath);
//         
        // creates the save directory if it does not exists
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }
         String ffile=null;
        for (Part part : request.getParts()) {
            String fileName = extractFileName(part);
            System.out.println(fileName);
//            // refines the fileName in case it is an absolute path
              fileName = new File(fileName).getName();
              part.write(savePath +File.separator + fileName);
              ffile = fileName;
        }
        
        System.out.println("tooooooo: "+savePath+File.separator + ffile);
        File uploadedFile = new File(savePath + File.separator + ffile);
        if(uploadedFile.exists()){
        	System.out.println("++++ "+uploadedFile.getAbsolutePath() + " +++++");
        }else{ 
        	System.out.println("something weeeent wrooooong");
        }
        
        request.setAttribute("message", "Upload has been done successfully!<br/>");
        
        
        //execute XMI2PRISM on the generated file....
        
        System.out.println("run on: " + uploadedFile.getAbsolutePath());
        
        Process proc=null;
        try{
        	 proc = Runtime.getRuntime().exec("java -jar libs/xtp.jar "+uploadedFile.getAbsolutePath());
        }catch(Exception e){
        	
            request.setAttribute("outputxtperr", e.getCause()+ ": "+e.getMessage());
        }
        
        System.out.println("err: " + proc.getErrorStream().toString()  +
        		      " out: "+ proc.getOutputStream().toString() + 
        		      " outputf: "+savePath + File.separator + ffile);
        
        //outputs the error stream caused by the invoked process above
        BufferedReader errinput = new BufferedReader(new InputStreamReader(
        		proc.getErrorStream()));
        StringBuilder sboerr = new StringBuilder();
        String ll=errinput.readLine();  
        while(ll != null) {
        	System.out.println(ll);
        	ll=errinput.readLine();
        }
        request.setAttribute("erroutputxtp", sboerr.toString());
        
        BufferedReader outputinput = new BufferedReader(new InputStreamReader(
        		proc.getInputStream()));
        StringBuilder sbo = new StringBuilder();
        String ll1=outputinput.readLine();  
        while(ll1 != null) {
        	System.out.println(ll1);
        	sbo.append(ll1 + "<br/>");
        	ll1=outputinput.readLine();
        }
        request.setAttribute("outputxtp", sbo.toString());
        
        
        ffile = ffile.substring(0, ffile.indexOf('.'))+".pm";
        
        String filePath = savePath + File.separator +ffile;
        String prismCode = null;
        try{
        
        
        	BufferedReader brPrism = new BufferedReader(new FileReader(new File(filePath)));
            StringBuilder sb = new StringBuilder();
            String line;
            while((line=brPrism.readLine())!=null){
            	System.out.println("line: "+line);
            	sb.append(line+"</br>");
            }
             prismCode = sb.toString();
            brPrism.close();
        }catch (FileNotFoundException e) {
			e.printStackTrace();
		}finally {
			//outputs the error stream caused by the invoked process above
	        BufferedReader errinput1 = new BufferedReader(new InputStreamReader(
	        		proc.getErrorStream()));
	        StringBuilder sboerr1 = new StringBuilder();
	        String ll11=errinput1.readLine();  
	        while(ll11 != null) {
	        	System.out.println(ll11);
	        	ll11=errinput1.readLine();
	        }
	        request.setAttribute("erroutputxtp", sboerr1.toString());
	       
		}
        
        
        request.setAttribute("prism", prismCode);
        
        
        getServletContext().getRequestDispatcher("/message.jsp").forward(
                request, response);
    }
    /**
     * Extracts file name from HTTP header content-disposition
     */
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
    }
	
}
