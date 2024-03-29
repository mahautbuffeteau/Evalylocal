package model;
// Generated 10 mars 2024, 20:46:57 by Hibernate Tools 4.3.6.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Epreuve generated by hbm2java
 */
@Entity
@Table(name = "epreuve", catalog = "wrc")
public class Epreuve implements java.io.Serializable {

	private int id;
	private Integer ordre;
	private String saison;
	private Set<ResultatEpreuve> resultatEpreuves = new HashSet<ResultatEpreuve>(0);
	private Set<EpreuveSpeciale> epreuveSpeciales = new HashSet<EpreuveSpeciale>(0);

	public Epreuve() {
	}

	public Epreuve(int id) {
		this.id = id;
	}

	public Epreuve(int id, Integer ordre, String saison, Set<ResultatEpreuve> resultatEpreuves,
			Set<EpreuveSpeciale> epreuveSpeciales) {
		this.id = id;
		this.ordre = ordre;
		this.saison = saison;
		this.resultatEpreuves = resultatEpreuves;
		this.epreuveSpeciales = epreuveSpeciales;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "ordre")
	public Integer getOrdre() {
		return this.ordre;
	}

	public void setOrdre(Integer ordre) {
		this.ordre = ordre;
	}

	@Column(name = "saison", length = 9)
	public String getSaison() {
		return this.saison;
	}

	public void setSaison(String saison) {
		this.saison = saison;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "epreuve")
	public Set<ResultatEpreuve> getResultatEpreuves() {
		return this.resultatEpreuves;
	}

	public void setResultatEpreuves(Set<ResultatEpreuve> resultatEpreuves) {
		this.resultatEpreuves = resultatEpreuves;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "epreuve")
	public Set<EpreuveSpeciale> getEpreuveSpeciales() {
		return this.epreuveSpeciales;
	}

	public void setEpreuveSpeciales(Set<EpreuveSpeciale> epreuveSpeciales) {
		this.epreuveSpeciales = epreuveSpeciales;
	}

}
