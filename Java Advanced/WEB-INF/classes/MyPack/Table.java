// Java Document
package MyPack;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class Table extends TagSupport {
    private int number;
    private static int i;
    private static String result="";

    public void setNumber(int number) {
        this.number = number;
    }

    public int doStartTag() {
        return EVAL_BODY_INCLUDE;
    }

    public int doAfterBody() throws JspException {
        i++;
        result = number + "*" + i + "=" + (number * i);
        JspWriter out = pageContext.getOut();
        try {
            out.print(result+"<br>");
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (i == 10)
            return SKIP_BODY;
        else
            return EVAL_BODY_AGAIN;
      
    }

    public int doEndTag() {
        i = 0;
        result = "";
        return EVAL_PAGE;
    }
}