package com.servlet.demo;

public class OnlineUser {
    private String sessionId;
    private String ip;
    private String page;
    private String username;
    private long time;

    public OnlineUser(String sessionId, String ip, String page, String username, long time) {
        this.sessionId = sessionId;
        this.ip = ip;
        this.page = page;
        this.username = username;
        this.time =time;
    }

    public String getSessionId() {
        return sessionId;
    }

    public void setSessionId(String sessionId) {
        this.sessionId = sessionId;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public long getTime() {
        return time;
    }

    public void setTime(long time) {
        this.time = time;
    }
}
