package com.studentmodal.org;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "complains")
public class Student {
    @Id
    @Column(name = "complain_id")
    private int student_id;

    @Column(name="fullName")
    private  String fullName;

    @Column(name="indexNumber")
    private String indexNumber;

    @Column(name="emailAddress")
    private String emailAddress;

    @Column(name="issues")
    private String complain;

    @Column(name = "complain_type")
    private String complain_type;


    public Student() {
    }

    public Student( String fullName, String indexNumber, String emailAddress, String complain, String complain_type) {

        this.fullName = fullName;
        this.indexNumber = indexNumber;
        this.emailAddress = emailAddress;
        this.complain = complain;
        this.complain_type = complain_type;
    }

    public int getStudent_id() {
        return student_id;
    }

    public void setStudent_id(int student_id) {
        this.student_id = student_id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getIndexNumber() {
        return indexNumber;
    }

    public void setIndexNumber(String indexNumber) {
        this.indexNumber = indexNumber;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getComplain() {
        return complain;
    }

    public void setComplain(String complain) {
        this.complain = complain;
    }

    public String getComplain_type() {
        return complain_type;
    }

    public void setComplain_type(String complain_type) {
        this.complain_type = complain_type;
    }

    @Override
    public String toString() {
        return "Student{" +
                "student_id=" + student_id +
                ", fullName='" + fullName + '\'' +
                ", indexNumber='" + indexNumber + '\'' +
                ", emailAddress='" + emailAddress + '\'' +
                ", complain='" + complain + '\'' +
                ", complain_type='" + complain_type + '\'' +
                '}';
    }
}
