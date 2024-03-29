package model;
// Generated 10 mars 2024, 20:46:57 by Hibernate Tools 4.3.6.Final

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * VerifyUtilisateur generated by hbm2java
 */
@Entity
@Table(name = "verify_utilisateur", catalog = "wrc")
public class VerifyUtilisateur implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2528214597502400842L;
	private int id;
	private Utilisateur utilisateur;
	private String token;
	private LocalDateTime expiredDataToken;

	public VerifyUtilisateur() {
	}

	public VerifyUtilisateur(int id) {
		this.id = id;
	}

	public VerifyUtilisateur(int id, Utilisateur utilisateur, String token, LocalDateTime expiredDataToken) {
		this.id = id;
		this.utilisateur = utilisateur;
		this.token = token;
		this.expiredDataToken = expiredDataToken;
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
	@JoinColumn(name = "id_utilisateur")
	public Utilisateur getUtilisateur() {
		return this.utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	@Column(name = "token", length = 500)
	public String getToken() {
		return this.token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "expiredDataToken", length = 10)
	public LocalDateTime getExpiredDataToken() {
		return this.expiredDataToken;
	}

	public void setExpiredDataToken(LocalDateTime expiredDataToken) {
		this.expiredDataToken = expiredDataToken;
	}
	
	public boolean isExpired() {
		return LocalDateTime.now().isAfter(expiredDataToken);
	}
}
