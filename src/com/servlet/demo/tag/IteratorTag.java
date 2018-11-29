package com.servlet.demo.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.Collection;

/**
 * 带标签体的标签
 */
public class IteratorTag extends SimpleTagSupport {
    private String collection;
    private String item;

    public String getCollection() {
        return collection;
    }

    public void setCollection(String collection) {
        this.collection = collection;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    @Override
    public void doTag() throws JspException, IOException {
        Collection list = (Collection) getJspContext().getAttribute(collection);
        for (Object s : list) {
            getJspContext().setAttribute(item, s);
            getJspBody().invoke(null);
        }
    }
}
