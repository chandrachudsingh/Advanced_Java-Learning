// Java Document
package MyPack;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class Factorial extends TagSupport {
    private int number;
    private static int i, result = 1;

    public void setNumber(int number) 
    {
        this.number = number;
    }

    public int doStartTag() 
    {
        return EVAL_BODY_INCLUDE;
    }

    public int doAfterBody() 
    {
        i++;
        result *= i;
        
        if (i == number)
            return SKIP_BODY;
        else
            return EVAL_BODY_AGAIN;
      
    }

    public int doEndTag() throws JspException 
    {
        JspWriter out = pageContext.getOut();
        try 
        {
            out.print(result);
        } 
        catch (Exception e) {
            e.printStackTrace();
        }

        i = 0;
        result = 1;
        return EVAL_PAGE;
    }
}