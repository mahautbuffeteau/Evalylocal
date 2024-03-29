package modelold;
// Generated 26 mars 2021 � 22:40:09 by Hibernate Tools 5.1.10.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * FormateurMatiere generated by hbm2java
 */
@Entity
@Table(name = "formateur_matiere", catalog = "wrc")
//@Table(name = "formateur_matiere", catalog = "u575564338_wrc")
public class FormateurMatiere implements java.io.Serializable {

	private Integer idFormateurMatiere;
	private Formateur formateur;
	private Matiere matiere;

	public FormateurMatiere() {
	}

	public FormateurMatiere(Formateur formateur, Matiere matiere) {
		this.formateur = formateur;
		this.matiere = matiere;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id_formateur_matiere", unique = true, nullable = false)
	public Integer getIdFormateurMatiere() {
		return this.idFormateurMatiere;
	}

	public void setIdFormateurMatiere(Integer idFormateurMatiere) {
		this.idFormateurMatiere = idFormateurMatiere;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_formateur")
	public Formateur getFormateur() {
		return this.formateur;
	}

	public void setFormateur(Formateur formateur) {
		this.formateur = formateur;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_matiere")
	public Matiere getMatiere() {
		return this.matiere;
	}

	public void setMatiere(Matiere matiere) {
		this.matiere = matiere;
	}

	@Override
	public String toString() {
		return "FormateurMatiere [idFormateurMatiere=" + idFormateurMatiere +  ", matiere="
				+ matiere + "]";
	}
	
	

}