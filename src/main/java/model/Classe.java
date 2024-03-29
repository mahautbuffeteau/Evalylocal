package model;
// Generated 10 mars 2024, 20:46:57 by Hibernate Tools 4.3.6.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Classe generated by hbm2java
 */
@Entity
@Table(name = "classe", catalog = "wrc")
public class Classe implements java.io.Serializable {

	private int id;
	private String nom;
	private String transmission;

	public Classe() {
	}

	public Classe(int id, String nom, String transmission) {
		this.id = id;
		this.nom = nom;
		this.transmission = transmission;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "nom", nullable = false, length = 50)
	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	@Column(name = "transmission", nullable = false, length = 50)
	public String getTransmission() {
		return this.transmission;
	}

	public void setTransmission(String transmission) {
		this.transmission = transmission;
	}

}
