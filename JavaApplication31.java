/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication31;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

/**
 *
 * @author Chinnu
 */
public class JavaApplication31 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       
           String cityName = "Jaisalmer";
           int date = 1;
           int month = 6;
           int year = 2013;
           String fileName = "C:/Aayush/Lectures/6th Sem/EED320/Data/Wunderground1/output";
           for (int i=1;i!=50;i++) {
            int d = (date+i)%28;
            if(d==0){
                d = 28;
            }
            if(date+i==29){
                month = month+1;
            }
            getData(cityName,d,month,year,fileName+i+".csv");
           }
    }
    public static void getData(String cityName, int date, int month, int year,String fileName) {
        try {
           System.getProperties().put("http.proxyHost", "proxy22.iitd.ernet.in");
           System.getProperties().put("http.proxyPort", "3128");
           String dateS = Integer.toString(date);
           String monthS = Integer.toString(month);
           String yearS = Integer.toString(year);
           String UrlS = "http://www.wunderground.com/history/airport/VOTV/"+yearS+"/" + monthS + "/"+dateS +"/DailyHistory.html?req_city="+cityName+"&req_state=&req_statename=India&theprefset=SHOWMETAR&theprefvalue=1&format=1";
                URL myURL = new URL(UrlS);
                URLConnection myURLConnection = myURL.openConnection();
                myURLConnection.connect();
                String charset = "UTF-8";
                System.out.println("connected");
                 BufferedReader in = new BufferedReader(new InputStreamReader(
                                    myURLConnection.getInputStream()));
                 File file = new File(fileName);
                 if (!file.exists()) file.createNewFile();
                PrintWriter out = new PrintWriter(file);
                String inputLine;
                int  k =0;
                String outputLine = "";
                String[] noob;
                while ((inputLine = in.readLine()) != null) {
                    
                    //System.out.println(inputLine);
                    String[] ap = inputLine.split("<br />");
                    outputLine = outputLine+ap[0];
                    //System.out.println(outputLine);
                    //System.out.println(ap.length);
                    if (ap.length==1) {
                        if (!outputLine.isEmpty() && !(outputLine.charAt(0) == 'T' ))
                        {
                            noob = outputLine.split(",");
                            if(noob[7].equals("Calm")){
                               noob[7] = "0";
                            }
                            out.println(noob[7]);
                        }
                        outputLine = "";
                        
                        
                        
                        
                    }
                    else {
                        System.err.println("Error");
                    }
                   
                    
                }
                in.close();
                out.close();
                
            } 
            catch (MalformedURLException e) { 
                System.out.println("connect failed malformed");
                // new URL() failed
                // ...
            } 
            catch (IOException e) {   
                System.out.println("IO failure");
                e.printStackTrace();
                // ...
            }
    }
}
