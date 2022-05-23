// Java Document
package MyPack;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class PowerNumber extends TagSupport {
    private int number;
    private int power;
    private static int counter;
    private static int result = 1;

    public void setPower(int power) {
        this.power = power;
        counter=0;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int doStartTag() {
        return EVAL_BODY_INCLUDE;
    }

    public int doAfterBody() {
        counter++;
        result *= number;

        if (counter == power)
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
        result = 1;
        return EVAL_PAGE;
    }
}