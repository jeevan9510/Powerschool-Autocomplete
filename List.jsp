<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
   <%
   try{
     String s[]=null;
       ArrayList<String> li = new ArrayList<String>();
       try
        {
            
            FileInputStream fstream = new FileInputStream("C://Users//jeevan kumar//Desktop//english.txt");
            BufferedReader br = new BufferedReader(new InputStreamReader(fstream));
            String strLine;
            while ((strLine = br.readLine()) != null)
            {
                li.add(strLine);
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
       String[] str = new String[li.size()];
       Iterator it = li.iterator();

       int i = 0;
       while(it.hasNext())
       {
           String p = (String)it.next();
           str[i] = p;
           i++;
       }

       String query = (String)request.getParameter("q");
       int cnt=1;
       for(int j=0;j<(str.length);j++)
       {
           if(str[j].toUpperCase().startsWith(query.toUpperCase()))
           {
              out.print(str[j]+"\n");
              cnt++;
            }
       }
}
catch(Exception e){
e.printStackTrace();
}
%>