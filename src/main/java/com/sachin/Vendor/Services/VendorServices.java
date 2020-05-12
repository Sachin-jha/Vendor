package com.sachin.Vendor.Services;

import java.util.List;

import com.sachin.Vendor.Model.Vendor;

public interface VendorServices {

	Vendor saveVendor(Vendor vendor);

	Vendor updateVendor(Vendor vendor);

	void deleteVendor(Vendor vendor);

	Vendor getVendorById(int id);

	List<Vendor> getAllVendor();

}
