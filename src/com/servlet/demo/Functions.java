package com.servlet.demo;

/**
 * 表达式语言的自定定义函数
 */
public class Functions {
    public static String reverse(String text) {
        return new StringBuffer(text).reverse().toString();
    }

    public static int charCount(String text) {
        return text.length();
    }
}
