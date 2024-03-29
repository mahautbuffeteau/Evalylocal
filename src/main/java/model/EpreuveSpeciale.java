package model;
// Generated 10 mars 2024, 20:46:57 by Hibernate Tools 4.3.6.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * EpreuveSpeciale generated by hbm2java
 */
@Entity
@Table(name = "epreuve_speciale", catalog = "wrc")
public class EpreuveSpeciale implements java.io.Serializable {

	private int id;
	private Epreuve epreuve;
	private Speciale speciale;
	private Integer ordre;
	private String meteo;
	private String heure;
	private String condition;
	private Boolean isPowerstage;

	public EpreuveSpeciale() {
	}

	public EpreuveSpeciale(int id) {
		this.id = id;
	}

	public EpreuveSpeciale(int id, Epreuve epreuve, Speciale speciale, Integer ordre, String meteo, String heure,
			String condition, Boolean isPowerstage) {
		this.id = id;
		this.epreuve = epreuve;
		this.speciale = speciale;
		this.ordre = ordre;
		this.meteo = meteo;
		this.heure = heure;
		this.condition = condition;
		this.isPowerstage = isPowerstage;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idEpreuve")
	public Epreuve getEpreuve() {
		return this.epreuve;
	}

	public void setEpreuve(Epreuve epreuve) {
		this.epreuve = epreuve;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idSpeciale")
	public Speciale getSpeciale() {
		return this.speciale;
	}

	public void setSpeciale(Speciale speciale) {
		this.speciale = speciale;
	}

	@Column(name = "ordre")
	public Integer getOrdre() {
		return this.ordre;
	}

	public void setOrdre(Integer ordre) {
		this.ordre = ordre;
	}

	@Column(name = "meteo", length = 50)
	public String getMeteo() {
		return this.meteo;
	}

	public void setMeteo(String meteo) {
		this.meteo = meteo;
	}

	@Column(name = "heure", length = 50)
	public String getHeure() {
		return this.heure;
	}

	public void setHeure(String heure) {
		this.heure = heure;
	}

	@Column(name = "condition", length = 6)
	public String getCondition() {
		return this.condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	@Column(name = "isPowerstage")
	public Boolean getIsPowerstage() {
		return this.isPowerstage;
	}

	public void setIsPowerstage(Boolean isPowerstage) {
		this.isPowerstage = isPowerstage;
	}

}
