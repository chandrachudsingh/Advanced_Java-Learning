package MyPack;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class SimpleTagHandler extends TagSupport 
{
    public int doStartTag() throws JspException {
        JspWriter jw = pageContext.getOut();
        try{
            jw.println("<br> Body of doStartTag()");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return EVAL_BODY_INCLUDE;
    }

    public int doEndTag() throws JspException {
        JspWriter jw = pageContext.getOut();
        try{
            jw.println("<br> Body of doEndTag()");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return EVAL_PAGE;
    }
}