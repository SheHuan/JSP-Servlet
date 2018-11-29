package com.servlet.demo.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * 带属性的标签
 */
public class UserTag extends SimpleTagSupport {
    private String name;
    private String age;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    @Override
    public void doTag() throws JspException, IOException {
        JspWriter writer = getJspContext().getOut();
        writer.write("<table border='1'>");

        writer.write("<tr>");

        writer.write("<td>");
        writer.write(name);
        writer.write("</td>");
        writer.write("<td>");
        writer.write(age);
        writer.write("</td>");

        writer.write("</tr>");

        writer.write("</table>");
    }
}
