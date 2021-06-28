package model;
// Generated 26 mars 2021 � 22:40:09 by Hibernate Tools 5.1.10.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Promotion generated by hbm2java
 */
@Entity
@Table(name = "promotion", catalog = "evaly")
//@Table(name = "promotion", catalog = "u575564338_evaly")
public class Promotion implements java.io.Serializable {

	private Integer idPromotion;
	private Organisation organisation;
	private String nom;
	private Date dateCreation;
	private String anneeCreation;
	private Set<Examen> examens = new HashSet<Examen>(0);
	private Set<Apprenant> apprenants = new HashSet<Apprenant>(0);
	private Set<PromotionFormateur> promotionFormateurs = new HashSet<PromotionFormateur>(0);

	public Promotion() {
	}

	public Promotion(Organisation organisation, String nom, Date dateCreation, String anneeCreation,
			Set<Apprenant> apprenants, Set<PromotionFormateur> promotionFormateurs) {
		this.organisation = organisation;
		this.nom = nom;
		this.dateCreation = dateCreation;
		this.anneeCreation = anneeCreation;
		this.apprenants = apprenants;
		this.promotionFormateurs = promotionFormateurs;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id_promotion", unique = true, nullable = false)
	public Integer getIdPromotion() {
		return this.idPromotion;
	}

	public void setIdPromotion(Integer idPromotion) {
		this.idPromotion = idPromotion;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_organisation")
	public Organisation getOrganisation() {
		return this.organisation;
	}

	public void setOrganisation(Organisation organisation) {
		this.organisation = organisation;
	}

	@Column(name = "nom", length = 50)
	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "date_creation", length = 10)
	public Date getDateCreation() {
		return this.dateCreation;
	}

	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}

	@Column(name = "annee_creation", length = 10)
	public String getAnneeCreation() {
		return this.anneeCreation;
	}

	public void setAnneeCreation(String anneeCreation) {
		this.anneeCreation = anneeCreation;
	}
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "promotion")
	public Set<Examen> getExamens() {
		return this.examens;
	}

	public void setExamens(Set<Examen> examens) {
		this.examens = examens;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "promotion")
	public Set<Apprenant> getApprenants() {
		return this.apprenants;
	}

	public void setApprenants(Set<Apprenant> apprenants) {
		this.apprenants = apprenants;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "promotion")
	public Set<PromotionFormateur> getPromotionFormateurs() {
		return this.promotionFormateurs;
	}

	public void setPromotionFormateurs(Set<PromotionFormateur> promotionFormateurs) {
		this.promotionFormateurs = promotionFormateurs;
	}

	@Override
	public String toString() {
		return "Promotion [idPromotion=" + idPromotion + ", organisation=" + organisation + ", nom=" + nom
				+ ", dateCreation=" + dateCreation + ", anneeCreation=" + anneeCreation + ", examens=" + examens + ", promotionFormateurs=" + promotionFormateurs + "]";
	}

	
	

}