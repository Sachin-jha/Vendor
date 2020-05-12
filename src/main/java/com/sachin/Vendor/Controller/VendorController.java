package com.sachin.Vendor.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sachin.Vendor.Model.Vendor;
import com.sachin.Vendor.Services.VendorServices;

@Controller
public class VendorController {
	
	@Autowired
	private VendorServices services;

	public VendorServices getServices() {
		return services;
	}

	public void setServices(VendorServices services) {
		this.services = services;
	}

	@RequestMapping("/vendorRegistration")
	public String saveVendorData()
	{
		return "vendor";
	}
	
	@RequestMapping("/createVendor")
	public String getVendorData(@ModelAttribute("vendor") Vendor vendor , ModelMap model)
	{
		Vendor saveVendor = services.saveVendor(vendor);
		model.addAttribute("saveVendor", "Data save with an id:- "+saveVendor.getId());
		return "vendor";
	}
	
	@RequestMapping("/displayVendor")	
	public String displayVendorData(ModelMap model)
	{
		List<Vendor> allData = services.getAllVendor();
		model.addAttribute("showAllData", allData);
		return "displayVendor";
	}
	
	@RequestMapping("/deleteVendor")
	public String deleteVendor(@RequestParam("id") int id , ModelMap model)
	{
		Vendor vendor = new Vendor();
		vendor.setId(id);
		services.deleteVendor(vendor);
		
		List<Vendor> allData = services.getAllVendor();
		model.addAttribute("showAllData", allData);
		return "displayVendor";
	}
	
	@RequestMapping("/updateVendorData")
	public String showVendor(@RequestParam("id") int id , ModelMap model)
	{
		Vendor vendor = services.getVendorById(id);
		model.addAttribute("update", vendor);
		return "updateVendor";
	}
	
	@RequestMapping("/updateVendorDetails")
	public String updateVendor(@ModelAttribute("vendor") Vendor vendor , ModelMap model)
	{
		services.updateVendor(vendor);
		List<Vendor> allData = services.getAllVendor();
		model.addAttribute("showAllData", allData);
		return "displayVendor";
	}
	
	
	
}
