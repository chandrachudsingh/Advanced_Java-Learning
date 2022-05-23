// Java Document
package MyPack;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class TagHandlerBodyTag extends BodyTagSupport    
{
    protected BodyContent bodyContent;

    public int doStartTag() 
    {
        return EVAL_BODY_BUFFERED;
    }

    public int doEndTag() 
    {                                                                
        try
        {
            bodyContent = getBodyContent();
            String str = bodyContent.getString();
            JspWriter out = bodyContent.getEnclosingWriter();   //to overwrite it
            if(str != null)
            {
                out.println("<br>"+str.toLowerCase());
            }
        }
        catch(Exception e)
        {
            System.out.print(e);
        }
        return EVAL_PAGE;
    }
}