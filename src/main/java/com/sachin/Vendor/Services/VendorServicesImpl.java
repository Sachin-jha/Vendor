package com.sachin.Vendor.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sachin.Vendor.Model.Vendor;
import com.sachin.Vendor.Repository.VendorRepository;

@Service
public class VendorServicesImpl implements VendorServices {

	@Autowired
	private VendorRepository repo;

	public VendorRepository getRepo() {
		return repo;
	}

	public void setRepo(VendorRepository repo) {
		this.repo = repo;
	}

	@Override
	public Vendor saveVendor(Vendor vendor) {
		return repo.save(vendor);
	}

	@Override
	public Vendor updateVendor(Vendor vendor) {
		return repo.save(vendor);
	}

	@Override
	public void deleteVendor(Vendor vendor) {
		repo.delete(vendor);
	}

	@Override
	public Vendor getVendorById(int id) {
		return repo.findById(id).get();
	}

	@Override
	public List<Vendor> getAllVendor() {
		return repo.findAll();
	}

}
