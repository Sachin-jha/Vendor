package com.sachin.Vendor.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sachin.Vendor.Model.Vendor;

public interface VendorRepository extends JpaRepository<Vendor, Integer> {

}
