package com.servlet.demo.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.DynamicAttributes;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.ArrayList;

public class DynamicAttributesTag extends SimpleTagSupport implements DynamicAttributes {
    // 保存每个属性名的集合
    private ArrayList<String> keys = new ArrayList<>();
    // 保存每个属性值的集合
    private ArrayList<Object> values = new ArrayList<>();

    @Override
    public void doTag() throws JspException, IOException {
        JspWriter writer = getJspContext().getOut();
        writer.println("<ol>");
        for (int i = 0; i < keys.size(); i++) {
            String key = keys.get(i);
            Object value = values.get(i);
            writer.println("<li>" + key + " = " + value + "</li>");
        }
        writer.println("</ol>");
    }

    @Override
    public void setDynamicAttribute(String uri, String key, Object value) throws JspException {
        // 添加属性名
        keys.add(key);
        // 添加属性值
        values.add(value);
    }
}
