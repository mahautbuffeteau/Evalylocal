package principal;

import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.fasterxml.jackson.annotation.JsonIgnore;

import model.Utilisateur;

public class UserPrincipal implements UserDetails {

	private static final long serialVersionUID = 4313653395184670905L;

	public Integer id;

	private String username;

	private String mail;

	@JsonIgnore
	private String password;

	private Collection<? extends GrantedAuthority> authorities;

	public UserPrincipal() {
		super();

	}

	public UserPrincipal(Integer id, String username, String email, String password,

			Collection<? extends GrantedAuthority> authorities) {

		super();
		this.id = id;
		this.username = username;
		this.mail = email;
		this.password = password;
		this.authorities = authorities;
	}

	public static UserDetails create(Utilisateur utilisateur) {
		List<GrantedAuthority> authorities = utilisateur.getRoles().stream()
				.map(role -> new SimpleGrantedAuthority(role.getName())).collect(Collectors.toList());
		return new UserPrincipal(utilisateur.getId(), utilisateur.getLogin(), utilisateur.getEmail(), utilisateur.getPassword(), authorities);

	}

	public Integer getId() {
		return id;
	}

	public String getEmail() {
		return mail;
	}


	@Override
	public String getUsername() {
		return username;
	}

	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}
	
	
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;
		UserPrincipal that = (UserPrincipal) o;
		return Objects.equals(id, that.id);
	}

	@Override
	public int hashCode() {

		return Objects.hash(id);
	}

	@Override
	public String toString() {
		return "UserPrincipal [id=" + id + ", username=" + username + ", mail=" + mail
				+ ", password=" + password + ", authorities=" + authorities + "]";
	}

}