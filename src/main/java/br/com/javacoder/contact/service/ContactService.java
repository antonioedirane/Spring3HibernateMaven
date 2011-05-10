package br.com.javacoder.contact.service;

import java.util.List;

import br.com.javacoder.contact.model.Contact;

public interface ContactService {

	public void addContact(Contact contact);

	public List<Contact> listContact();

	public void removeContact(Long id);

}
