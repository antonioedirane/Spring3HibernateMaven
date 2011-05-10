package br.com.javacoder.contact.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.javacoder.contact.dao.ContactDAO;
import br.com.javacoder.contact.model.Contact;

@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactDAO contactDAO;

	@Override
	@Transactional
	public void addContact(Contact contact) {
		contactDAO.addContact(contact);
	}

	@Override
	@Transactional
	public List<Contact> listContact() {
		return contactDAO.listContact();
	}

	@Override
	@Transactional
	public void removeContact(Long id) {
		contactDAO.removeContact(id);
	}

}
