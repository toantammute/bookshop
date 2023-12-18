package model;

import data.CheckoutDB;
import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Date;

@Entity
public class Invoice {
    @Id
    private String invoiceID;
    private String address;
    private String paymentMethod;
    private String status;
    //@Temporal(TemporalType.DATE)
    private Date orderDate;
    //@Temporal(TemporalType.DATE)
    private Date deliDate;
    private String totalAmount;
    private String totalPay;

    private int discount;
    @OneToMany(cascade = {CascadeType.REMOVE}, fetch = FetchType.EAGER)
    private List<LineItem> lineItem = new ArrayList<>();



    //Getter and setter
    public String getInvoiceID() {
        return invoiceID;
    }
    public void setInvoiceID(String invoiceID) {
        this.invoiceID = invoiceID;
    }

    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }
    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }

    public Date getOrderDate() {
        return orderDate;
    }
    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Date getDeliDate() {
        return deliDate;
    }
    public void setDeliDate(Date deliDate) {
        this.deliDate = deliDate;
    }

    public String getTotalAmount() {
        return totalAmount;
    }
    public void setTotalAmount(String totalAmount) {
        this.totalAmount = totalAmount;
    }

    public String getTotalPay() {
        return totalPay;
    }
    public void setTotalPay(String totalPay) {
        this.totalPay = totalPay;
    }

    public List<LineItem> getLineItem() {
        return lineItem;
    }
    public void setLineItem(List<LineItem> lineItem) {
        this.lineItem = lineItem;
    }

    @ManyToOne(optional = false)
    private Customer customer;

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }
    public double getTotalAmountDouble ()
    {
        String str = getTotalAmount();
        str = str.replace("$", ""); // Remove the "$" symbol if present
        str = str.replace(",", "");
        double totalAmount;
        totalAmount = Double.parseDouble(str);
        return totalAmount;
    }
    public double getTotalPayDouble ()
    {
        String str = getTotalPay();
        str = str.replace("$", ""); // Remove the "$" symbol if present
        str = str.replace(",", "");
        double totalPay =0;
        try {
            totalPay = Double.parseDouble(str);
        }
        catch (Exception e)
        {

        }finally {
            return totalPay;
        }
    }
}
