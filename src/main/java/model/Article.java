package model;

import java.util.Date;

public class Article {

    private long id;
    private Date date;
    private String title;
    private String content;
    private String imgUrl;

    public Article() {
    }

    public Article(long id, Date date, String title, String content, String imgUrl) {
        this.id = id;
        this.date = date;
        this.title = title;
        this.content = content;
        this.imgUrl = imgUrl;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

}
