package MyPack;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class PrintNumber extends TagSupport {
    private int start, end;
    private static int counter;
    private static String result="";

    public void setStart(int start) {
        this.start = start;
        counter = start;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public int doStartTag() throws JspException {
        return EVAL_BODY_INCLUDE;
    }

    public int doAfterBody() {
        result += counter + "<br>";
        counter++;

        if (counter > end)
            return SKIP_BODY;
        else
            return EVAL_BODY_AGAIN;
    }

    public int doEndTag() throws JspException {
        JspWriter out = pageContext.getOut();
        try {
            out.print(result);
        } catch (Exception e) {
            e.printStackTrace();
        }

        counter = 0;
        result = "";
        return EVAL_PAGE;
    }
}