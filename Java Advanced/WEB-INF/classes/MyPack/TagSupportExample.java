package MyPack;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class TagSupportExample extends TagSupport 
{
    public int doStartTag(){
        return EVAL_BODY_INCLUDE;
    }

    public int doEndTag() {
        return SKIP_PAGE;
    }
}