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
 * SpecialeSurface generated by hbm2java
 */
@Entity
@Table(name = "speciale_surface", catalog = "wrc")
public class SpecialeSurface implements java.io.Serializable {

	private int id;
	private Speciale speciale;
	private Surface surface;
	private Integer pourcentage;

	public SpecialeSurface() {
	}

	public SpecialeSurface(int id, Surface surface) {
		this.id = id;
		this.surface = surface;
	}

	public SpecialeSurface(int id, Speciale speciale, Surface surface, Integer pourcentage) {
		this.id = id;
		this.speciale = speciale;
		this.surface = surface;
		this.pourcentage = pourcentage;
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
	@JoinColumn(name = "idSpeciale")
	public Speciale getSpeciale() {
		return this.speciale;
	}

	public void setSpeciale(Speciale speciale) {
		this.speciale = speciale;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idSurface", nullable = false)
	public Surface getSurface() {
		return this.surface;
	}

	public void setSurface(Surface surface) {
		this.surface = surface;
	}

	@Column(name = "pourcentage")
	public Integer getPourcentage() {
		return this.pourcentage;
	}

	public void setPourcentage(Integer pourcentage) {
		this.pourcentage = pourcentage;
	}

}
