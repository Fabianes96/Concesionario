/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author FABIAN
 */
@Entity
@Table(name = "ventas")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Ventas.findAll", query = "SELECT v FROM Ventas v")
    , @NamedQuery(name = "Ventas.findByMatricula", query = "SELECT v FROM Ventas v WHERE v.ventasPK.matricula = :matricula")
    , @NamedQuery(name = "Ventas.findByCedula", query = "SELECT v FROM Ventas v WHERE v.ventasPK.cedula = :cedula")
    , @NamedQuery(name = "Ventas.findByPrecio", query = "SELECT v FROM Ventas v WHERE v.precio = :precio")})
public class Ventas implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected VentasPK ventasPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "precio")
    private int precio;
    @JoinColumn(name = "cedula", referencedColumnName = "cedula", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Clientes clientes;
    @JoinColumn(name = "matricula", referencedColumnName = "matricula", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Vehiculos vehiculos;

    public Ventas() {
    }

    public Ventas(VentasPK ventasPK) {
        this.ventasPK = ventasPK;
    }

    public Ventas(VentasPK ventasPK, int precio) {
        this.ventasPK = ventasPK;
        this.precio = precio;
    }

    public Ventas(String matricula, int cedula) {
        this.ventasPK = new VentasPK(matricula, cedula);
    }

    public VentasPK getVentasPK() {
        return ventasPK;
    }

    public void setVentasPK(VentasPK ventasPK) {
        this.ventasPK = ventasPK;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public Clientes getClientes() {
        return clientes;
    }

    public void setClientes(Clientes clientes) {
        this.clientes = clientes;
    }

    public Vehiculos getVehiculos() {
        return vehiculos;
    }

    public void setVehiculos(Vehiculos vehiculos) {
        this.vehiculos = vehiculos;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (ventasPK != null ? ventasPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Ventas)) {
            return false;
        }
        Ventas other = (Ventas) object;
        if ((this.ventasPK == null && other.ventasPK != null) || (this.ventasPK != null && !this.ventasPK.equals(other.ventasPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.concesionario.Ventas[ ventasPK=" + ventasPK + " ]";
    }
    
}
