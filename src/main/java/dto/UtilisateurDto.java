package dto;

import java.util.Date;

public class UtilisateurDto {

	private int id;
	private String login;
	private String email;
	private String password;
	private String racenet;
	private Date inscription;
	private Date dernierLogin;
	private Boolean actif;
	
	
	
	public UtilisateurDto(int id, String login, String email, String password, String racenet, Date inscription,
			Date dernierLogin, Boolean actif) {
		super();
		this.id = id;
		this.login = login;
		this.email = email;
		this.password = password;
		this.racenet = racenet;
		this.inscription = inscription;
		this.dernierLogin = dernierLogin;
		this.actif = actif;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRacenet() {
		return racenet;
	}
	public void setRacenet(String racenet) {
		this.racenet = racenet;
	}
	public Date getInscription() {
		return inscription;
	}
	public void setInscription(Date inscription) {
		this.inscription = inscription;
	}
	public Date getDernierLogin() {
		return dernierLogin;
	}
	public void setDernierLogin(Date dernierLogin) {
		this.dernierLogin = dernierLogin;
	}
	public Boolean getActif() {
		return actif;
	}
	public void setActif(Boolean actif) {
		this.actif = actif;
	}
	@Override
	public String toString() {
		return "UtilisateurDto [id=" + id + ", login=" + login + ", email=" + email + ", password=" + password
				+ ", racenet=" + racenet + ", inscription=" + inscription + ", dernierLogin=" + dernierLogin
				+ ", actif=" + actif + "]";
	}



}
