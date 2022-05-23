package MyPack;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import javax.servlet.jsp.tagext.JspFragment;
import java.io.IOException;
import java.io.StringWriter;

public class HelloTag extends SimpleTagSupport
{
    private String to, from;

    public void setFrom(String from)
    {
        this.from = from;
    }
    public void setTo(String to)
    {
        this.to = to;
    }

    public void doTag() throws JspException, IOException
    {
        StringWriter sw = new StringWriter();
        JspFragment body = getJspBody();

        body.invoke(sw);
        PageContext pageContext = (PageContext) getJspContext();
        JspWriter out = pageContext.getOut();
        out.println("There is a message from '"+from+"' to '"+to+"'. Message content is '"+sw.toString() +"'");
    }
}