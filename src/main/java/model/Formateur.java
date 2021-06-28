package model;
// Generated 26 mars 2021 � 22:40:09 by Hibernate Tools 5.1.10.Final

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 * Formateur generated by hbm2java
 */
@Entity
@Table(name = "formateur", catalog = "evaly")
//@Table(name = "formateur", catalog = "u575564338_evaly")
@PrimaryKeyJoinColumn(name = "id_utilisateur")
public class Formateur extends Utilisateur {

	private Utilisateur utilisateur;
	private Boolean isReferent; 
	private Set<Examen> examens = new HashSet<Examen>(0);
	private Set<FormateurMatiere> formateurMatieres = new HashSet<FormateurMatiere>(0);
	private Set<Sujet> sujets = new HashSet<Sujet>(0);
	private Set<FormateurGroupeFormateur> formateurGroupeFormateurs = new HashSet<FormateurGroupeFormateur>(0);
	private Set<PromotionFormateur> promotionFormateurs = new HashSet<PromotionFormateur>(0);

	public Formateur() {
	}

	public Formateur( Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	public Formateur(Utilisateur utilisateur, Boolean isReferent, Set<Examen> examens,
			Set<FormateurMatiere> formateurMatieres, Set<Sujet> sujets,
			Set<FormateurGroupeFormateur> formateurGroupeFormateurs, Set<PromotionFormateur> promotionFormateurs) {
		this.utilisateur = utilisateur;
		this.isReferent = isReferent;
		this.examens = examens;
		this.formateurMatieres = formateurMatieres;
		this.sujets = sujets;
		this.formateurGroupeFormateurs = formateurGroupeFormateurs;
		this.promotionFormateurs = promotionFormateurs;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_utilisateur", nullable = false, insertable = false, updatable = false)
	public Utilisateur getUtilisateur() {
		return this.utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	@Column(name="is_referent")
	public Boolean getIsReferent() {
		return isReferent;
	}

	public void setIsReferent(Boolean isReferent) {
		this.isReferent = isReferent;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "formateur")
	public Set<Examen> getExamens() {
		return this.examens;
	}

	public void setExamens(Set<Examen> examens) {
		this.examens = examens;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "formateur",cascade = CascadeType.ALL)
	public Set<FormateurMatiere> getFormateurMatieres() {
		return this.formateurMatieres;
	}

	public void setFormateurMatieres(Set<FormateurMatiere> formateurMatieres) {
		this.formateurMatieres = formateurMatieres;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "formateur")
	public Set<Sujet> getSujets() {
		return this.sujets;
	}

	public void setSujets(Set<Sujet> sujets) {
		this.sujets = sujets;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "formateur", cascade = CascadeType.ALL)
	public Set<FormateurGroupeFormateur> getFormateurGroupeFormateurs() {
		return this.formateurGroupeFormateurs;
	}

	public void setFormateurGroupeFormateurs(Set<FormateurGroupeFormateur> formateurGroupeFormateurs) {
		this.formateurGroupeFormateurs = formateurGroupeFormateurs;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "formateur", cascade = CascadeType.ALL)
	public Set<PromotionFormateur> getPromotionFormateurs() {
		return this.promotionFormateurs;
	}

	public void setPromotionFormateurs(Set<PromotionFormateur> promotionFormateurs) {
		this.promotionFormateurs = promotionFormateurs;
	}

	@Override
	public String toString() {
		return "Formateur [ examens=" + examens + ", formateurMatieres="
				+ formateurMatieres + ", sujets=" + sujets + ", formateurGroupeFormateurs=" + formateurGroupeFormateurs
				+ ", promotionFormateurs=" + promotionFormateurs + "]";
	}
}