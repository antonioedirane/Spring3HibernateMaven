package br.com.javacoder.contact.dao;

import java.util.List;

import br.com.javacoder.contact.model.Contact;

public interface ContactDAO {

	public void addContact(Contact contact);

	public List<Contact> listContact();

	public void removeContact(Long id);

}
