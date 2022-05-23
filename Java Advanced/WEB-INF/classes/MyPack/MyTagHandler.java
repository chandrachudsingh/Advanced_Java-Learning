package MyPack;

import java.util.Calendar;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyTagHandler extends TagSupport
{
    public int doStartTag() throws JspException
    {
        JspWriter out=pageContext.getOut();    //return the Instance of JspWriter
        try {
            out.print(Calendar.getInstance().getTime());    //print date and time using JspWriter
        } catch (Exception e) {
            System.out.println(e);
        }

        return SKIP_BODY;  //will not evaluate the body content of the tag
    }
}