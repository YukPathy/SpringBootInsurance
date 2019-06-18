package com.kgisl.nsure.Diamond.model;

import java.util.Date;

public class ClientDO {

	private int clientId;
	private String clientName;
	private int agentId;
	private int contactTypeId;
	private String newICNo;
	private String oldICNo;
	private String businessRegNo;
	private Date dob;
	private int genderId;
	private int maritalStatusId;
	private int occupationId;
	private int salutationId;
	private int nationalityId;
	private int raceId;
	private String housePhoneNo;
	private String houseFaxNo;
	private String officePhoneNo;
	private String officeFaxNo;
	private String mobileNo;
	private String emailId;
	private String comments;
	private String staffCode;
	private int staffId;
	private String gSTRegistrationInd;
	private String gSTRegistrationNo;
	private Date gSTRegistrationDate;
	private Date gSTExpiryDate;
	private String websiteURL;
	private String perm_addr_1;
	private String perm_addr_2;
	private String perm_addr_3;
	private String perm_addr_4;
	private int perm_addr_postcode_id;
	private int perm_addr_state_id;
	private int perm_addr_country_id;
	private String corr_perm_addr_same_ind;
	private String corr_addr_1;
	private String corr_addr_2;
	private String corr_addr_3;
	private String corr_addr_4;
	private int corr_addr_postcode_id;
	private int corr_addr_state_id;
	private int corr_addr_country_id;
	private int logUserId;
	private int bussTypeId;
	private String bussTypeDesc;
	private int emplStatusId;
	
	private int sourceTypeId;
	private String accountCode;
	private int branchId;
	private String branchName;
	private String accountName;
	private int age;
	private String vIPStatus;
	private boolean staffInd;
	private String remarks;
	
	//Constructor to access client model attributes
	public ClientDO(int clientId, String clientName, int agentId,
			int contactTypeId, String newICNo, String oldICNo,
			String businessRegNo, Date dob, int genderId, int maritalStatusId,
			int occupationId, int salutationId, int nationalityId, int raceId,
			String housePhoneNo, String houseFaxNo, String officePhoneNo,
			String officeFaxNo, String mobileNo, String emailId,
			String comments, String staffCode, int staffId,
			String gSTRegistrationInd, String gSTRegistrationNo,
			Date gSTRegistrationDate, Date gSTExpiryDate, String websiteURL,
			String perm_addr_1, String perm_addr_2, String perm_addr_3,
			String perm_addr_4, int perm_addr_postcode_id,
			int perm_addr_state_id, int perm_addr_country_id,
			String corr_perm_addr_same_ind, String corr_addr_1,
			String corr_addr_2, String corr_addr_3, String corr_addr_4,
			int corr_addr_postcode_id, int corr_addr_state_id,
			int corr_addr_country_id, int logUserId, int bussTypeId,
			String bussTypeDesc, int emplStatusId, int sourceTypeId,
			String accountCode, int branchId, String branchName,
			String accountName, int age, String vIPStatus, boolean staffInd,
			String remarks) {
		this.clientId = clientId;
		this.clientName = clientName;
		this.agentId = agentId;
		this.contactTypeId = contactTypeId;
		this.newICNo = newICNo;
		this.oldICNo = oldICNo;
		this.businessRegNo = businessRegNo;
		this.dob = dob;
		this.genderId = genderId;
		this.maritalStatusId = maritalStatusId;
		this.occupationId = occupationId;
		this.salutationId = salutationId;
		this.nationalityId = nationalityId;
		this.raceId = raceId;
		this.housePhoneNo = housePhoneNo;
		this.houseFaxNo = houseFaxNo;
		this.officePhoneNo = officePhoneNo;
		this.officeFaxNo = officeFaxNo;
		this.mobileNo = mobileNo;
		this.emailId = emailId;
		this.comments = comments;
		this.staffCode = staffCode;
		this.staffId = staffId;
		this.gSTRegistrationInd = gSTRegistrationInd;
		this.gSTRegistrationNo = gSTRegistrationNo;
		this.gSTRegistrationDate = gSTRegistrationDate;
		this.gSTExpiryDate = gSTExpiryDate;
		this.websiteURL = websiteURL;
		this.perm_addr_1 = perm_addr_1;
		this.perm_addr_2 = perm_addr_2;
		this.perm_addr_3 = perm_addr_3;
		this.perm_addr_4 = perm_addr_4;
		this.perm_addr_postcode_id = perm_addr_postcode_id;
		this.perm_addr_state_id = perm_addr_state_id;
		this.perm_addr_country_id = perm_addr_country_id;
		this.corr_perm_addr_same_ind = corr_perm_addr_same_ind;
		this.corr_addr_1 = corr_addr_1;
		this.corr_addr_2 = corr_addr_2;
		this.corr_addr_3 = corr_addr_3;
		this.corr_addr_4 = corr_addr_4;
		this.corr_addr_postcode_id = corr_addr_postcode_id;
		this.corr_addr_state_id = corr_addr_state_id;
		this.corr_addr_country_id = corr_addr_country_id;
		this.logUserId = logUserId;
		this.bussTypeId = bussTypeId;
		this.bussTypeDesc = bussTypeDesc;
		this.emplStatusId = emplStatusId;
		this.sourceTypeId = sourceTypeId;
		this.accountCode = accountCode;
		this.branchId = branchId;
		this.branchName = branchName;
		this.accountName = accountName;
		this.age = age;
		this.vIPStatus = vIPStatus;
		this.staffInd = staffInd;
		this.remarks = remarks;
	}
	/**
	 * @return the clientId
	 */
	public int getClientId() {
		return clientId;
	}
	/**
	 * @param clientId the clientId to set
	 */
	public void setClientId(int clientId) {
		this.clientId = clientId;
	}
	/**
	 * @return the clientName
	 */
	public String getClientName() {
		return clientName;
	}
	/**
	 * @param clientName the clientName to set
	 */
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	/**
	 * @return the agentId
	 */
	public int getAgentId() {
		return agentId;
	}
	/**
	 * @param agentId the agentId to set
	 */
	public void setAgentId(int agentId) {
		this.agentId = agentId;
	}
	/**
	 * @return the contactTypeId
	 */
	public int getContactTypeId() {
		return contactTypeId;
	}
	/**
	 * @param contactTypeId the contactTypeId to set
	 */
	public void setContactTypeId(int contactTypeId) {
		this.contactTypeId = contactTypeId;
	}
	/**
	 * @return the newICNo
	 */
	public String getNewICNo() {
		return newICNo;
	}
	/**
	 * @param newICNo the newICNo to set
	 */
	public void setNewICNo(String newICNo) {
		this.newICNo = newICNo;
	}
	/**
	 * @return the oldICNo
	 */
	public String getOldICNo() {
		return oldICNo;
	}
	/**
	 * @param oldICNo the oldICNo to set
	 */
	public void setOldICNo(String oldICNo) {
		this.oldICNo = oldICNo;
	}
	/**
	 * @return the businessRegNo
	 */
	public String getBusinessRegNo() {
		return businessRegNo;
	}
	/**
	 * @param businessRegNo the businessRegNo to set
	 */
	public void setBusinessRegNo(String businessRegNo) {
		this.businessRegNo = businessRegNo;
	}
	/**
	 * @return the dob
	 */
	public Date getDob() {
		return dob;
	}
	/**
	 * @param dob the dob to set
	 */
	public void setDob(Date dob) {
		this.dob = dob;
	}
	/**
	 * @return the genderId
	 */
	public int getGenderId() {
		return genderId;
	}
	/**
	 * @param genderId the genderId to set
	 */
	public void setGenderId(int genderId) {
		this.genderId = genderId;
	}
	/**
	 * @return the maritalStatusId
	 */
	public int getMaritalStatusId() {
		return maritalStatusId;
	}
	/**
	 * @param maritalStatusId the maritalStatusId to set
	 */
	public void setMaritalStatusId(int maritalStatusId) {
		this.maritalStatusId = maritalStatusId;
	}
	/**
	 * @return the occupationId
	 */
	public int getOccupationId() {
		return occupationId;
	}
	/**
	 * @param occupationId the occupationId to set
	 */
	public void setOccupationId(int occupationId) {
		this.occupationId = occupationId;
	}
	/**
	 * @return the salutationId
	 */
	public int getSalutationId() {
		return salutationId;
	}
	/**
	 * @param salutationId the salutationId to set
	 */
	public void setSalutationId(int salutationId) {
		this.salutationId = salutationId;
	}
	/**
	 * @return the nationalityId
	 */
	public int getNationalityId() {
		return nationalityId;
	}
	/**
	 * @param nationalityId the nationalityId to set
	 */
	public void setNationalityId(int nationalityId) {
		this.nationalityId = nationalityId;
	}
	/**
	 * @return the raceId
	 */
	public int getRaceId() {
		return raceId;
	}
	/**
	 * @param raceId the raceId to set
	 */
	public void setRaceId(int raceId) {
		this.raceId = raceId;
	}
	/**
	 * @return the housePhoneNo
	 */
	public String getHousePhoneNo() {
		return housePhoneNo;
	}
	/**
	 * @param housePhoneNo the housePhoneNo to set
	 */
	public void setHousePhoneNo(String housePhoneNo) {
		this.housePhoneNo = housePhoneNo;
	}
	/**
	 * @return the houseFaxNo
	 */
	public String getHouseFaxNo() {
		return houseFaxNo;
	}
	/**
	 * @param houseFaxNo the houseFaxNo to set
	 */
	public void setHouseFaxNo(String houseFaxNo) {
		this.houseFaxNo = houseFaxNo;
	}
	/**
	 * @return the officePhoneNo
	 */
	public String getOfficePhoneNo() {
		return officePhoneNo;
	}
	/**
	 * @param officePhoneNo the officePhoneNo to set
	 */
	public void setOfficePhoneNo(String officePhoneNo) {
		this.officePhoneNo = officePhoneNo;
	}
	/**
	 * @return the officeFaxNo
	 */
	public String getOfficeFaxNo() {
		return officeFaxNo;
	}
	/**
	 * @param officeFaxNo the officeFaxNo to set
	 */
	public void setOfficeFaxNo(String officeFaxNo) {
		this.officeFaxNo = officeFaxNo;
	}
	/**
	 * @return the mobileNo
	 */
	public String getMobileNo() {
		return mobileNo;
	}
	/**
	 * @param mobileNo the mobileNo to set
	 */
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	/**
	 * @return the emailId
	 */
	public String getEmailId() {
		return emailId;
	}
	/**
	 * @param emailId the emailId to set
	 */
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	/**
	 * @return the comments
	 */
	public String getComments() {
		return comments;
	}
	/**
	 * @param comments the comments to set
	 */
	public void setComments(String comments) {
		this.comments = comments;
	}
	/**
	 * @return the staffCode
	 */
	public String getStaffCode() {
		return staffCode;
	}
	/**
	 * @param staffCode the staffCode to set
	 */
	public void setStaffCode(String staffCode) {
		this.staffCode = staffCode;
	}
	/**
	 * @return the staffId
	 */
	public int getStaffId() {
		return staffId;
	}
	/**
	 * @param staffId the staffId to set
	 */
	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}
	/**
	 * @return the gSTRegistrationInd
	 */
	public String getGSTRegistrationInd() {
		return gSTRegistrationInd;
	}
	/**
	 * @param gSTRegistrationInd the gSTRegistrationInd to set
	 */
	public void setGSTRegistrationInd(String gSTRegistrationInd) {
		this.gSTRegistrationInd = gSTRegistrationInd;
	}
	/**
	 * @return the gSTRegistrationNo
	 */
	public String getGSTRegistrationNo() {
		return gSTRegistrationNo;
	}
	/**
	 * @param gSTRegistrationNo the gSTRegistrationNo to set
	 */
	public void setGSTRegistrationNo(String gSTRegistrationNo) {
		this.gSTRegistrationNo = gSTRegistrationNo;
	}
	/**
	 * @return the gSTRegistrationDate
	 */
	public Date getGSTRegistrationDate() {
		return gSTRegistrationDate;
	}
	/**
	 * @param gSTRegistrationDate the gSTRegistrationDate to set
	 */
	public void setGSTRegistrationDate(Date gSTRegistrationDate) {
		this.gSTRegistrationDate = gSTRegistrationDate;
	}
	/**
	 * @return the gSTExpiryDate
	 */
	public Date getGSTExpiryDate() {
		return gSTExpiryDate;
	}
	/**
	 * @param gSTExpiryDate the gSTExpiryDate to set
	 */
	public void setGSTExpiryDate(Date gSTExpiryDate) {
		this.gSTExpiryDate = gSTExpiryDate;
	}
	/**
	 * @return the websiteURL
	 */
	public String getWebsiteURL() {
		return websiteURL;
	}
	/**
	 * @param websiteURL the websiteURL to set
	 */
	public void setWebsiteURL(String websiteURL) {
		this.websiteURL = websiteURL;
	}
	/**
	 * @return the perm_addr_1
	 */
	public String getPerm_addr_1() {
		return perm_addr_1;
	}
	/**
	 * @param perm_addr_1 the perm_addr_1 to set
	 */
	public void setPerm_addr_1(String perm_addr_1) {
		this.perm_addr_1 = perm_addr_1;
	}
	/**
	 * @return the perm_addr_2
	 */
	public String getPerm_addr_2() {
		return perm_addr_2;
	}
	/**
	 * @param perm_addr_2 the perm_addr_2 to set
	 */
	public void setPerm_addr_2(String perm_addr_2) {
		this.perm_addr_2 = perm_addr_2;
	}
	/**
	 * @return the perm_addr_3
	 */
	public String getPerm_addr_3() {
		return perm_addr_3;
	}
	/**
	 * @param perm_addr_3 the perm_addr_3 to set
	 */
	public void setPerm_addr_3(String perm_addr_3) {
		this.perm_addr_3 = perm_addr_3;
	}
	/**
	 * @return the perm_addr_4
	 */
	public String getPerm_addr_4() {
		return perm_addr_4;
	}
	/**
	 * @param perm_addr_4 the perm_addr_4 to set
	 */
	public void setPerm_addr_4(String perm_addr_4) {
		this.perm_addr_4 = perm_addr_4;
	}
	/**
	 * @return the perm_addr_postcode_id
	 */
	public int getPerm_addr_postcode_id() {
		return perm_addr_postcode_id;
	}
	/**
	 * @param perm_addr_postcode_id the perm_addr_postcode_id to set
	 */
	public void setPerm_addr_postcode_id(int perm_addr_postcode_id) {
		this.perm_addr_postcode_id = perm_addr_postcode_id;
	}
	/**
	 * @return the perm_addr_state_id
	 */
	public int getPerm_addr_state_id() {
		return perm_addr_state_id;
	}
	/**
	 * @param perm_addr_state_id the perm_addr_state_id to set
	 */
	public void setPerm_addr_state_id(int perm_addr_state_id) {
		this.perm_addr_state_id = perm_addr_state_id;
	}
	/**
	 * @return the perm_addr_country_id
	 */
	public int getPerm_addr_country_id() {
		return perm_addr_country_id;
	}
	/**
	 * @param perm_addr_country_id the perm_addr_country_id to set
	 */
	public void setPerm_addr_country_id(int perm_addr_country_id) {
		this.perm_addr_country_id = perm_addr_country_id;
	}
	/**
	 * @return the corr_perm_addr_same_ind
	 */
	public String getCorr_perm_addr_same_ind() {
		return corr_perm_addr_same_ind;
	}
	/**
	 * @param corr_perm_addr_same_ind the corr_perm_addr_same_ind to set
	 */
	public void setCorr_perm_addr_same_ind(String corr_perm_addr_same_ind) {
		this.corr_perm_addr_same_ind = corr_perm_addr_same_ind;
	}
	/**
	 * @return the corr_addr_1
	 */
	public String getCorr_addr_1() {
		return corr_addr_1;
	}
	/**
	 * @param corr_addr_1 the corr_addr_1 to set
	 */
	public void setCorr_addr_1(String corr_addr_1) {
		this.corr_addr_1 = corr_addr_1;
	}
	/**
	 * @return the corr_addr_2
	 */
	public String getCorr_addr_2() {
		return corr_addr_2;
	}
	/**
	 * @param corr_addr_2 the corr_addr_2 to set
	 */
	public void setCorr_addr_2(String corr_addr_2) {
		this.corr_addr_2 = corr_addr_2;
	}
	/**
	 * @return the corr_addr_3
	 */
	public String getCorr_addr_3() {
		return corr_addr_3;
	}
	/**
	 * @param corr_addr_3 the corr_addr_3 to set
	 */
	public void setCorr_addr_3(String corr_addr_3) {
		this.corr_addr_3 = corr_addr_3;
	}
	/**
	 * @return the corr_addr_4
	 */
	public String getCorr_addr_4() {
		return corr_addr_4;
	}
	/**
	 * @param corr_addr_4 the corr_addr_4 to set
	 */
	public void setCorr_addr_4(String corr_addr_4) {
		this.corr_addr_4 = corr_addr_4;
	}
	/**
	 * @return the corr_addr_postcode_id
	 */
	public int getCorr_addr_postcode_id() {
		return corr_addr_postcode_id;
	}
	/**
	 * @param corr_addr_postcode_id the corr_addr_postcode_id to set
	 */
	public void setCorr_addr_postcode_id(int corr_addr_postcode_id) {
		this.corr_addr_postcode_id = corr_addr_postcode_id;
	}
	/**
	 * @return the corr_addr_state_id
	 */
	public int getCorr_addr_state_id() {
		return corr_addr_state_id;
	}
	/**
	 * @param corr_addr_state_id the corr_addr_state_id to set
	 */
	public void setCorr_addr_state_id(int corr_addr_state_id) {
		this.corr_addr_state_id = corr_addr_state_id;
	}
	/**
	 * @return the corr_addr_country_id
	 */
	public int getCorr_addr_country_id() {
		return corr_addr_country_id;
	}
	/**
	 * @param corr_addr_country_id the corr_addr_country_id to set
	 */
	public void setCorr_addr_country_id(int corr_addr_country_id) {
		this.corr_addr_country_id = corr_addr_country_id;
	}
	/**
	 * @return the logUserId
	 */
	public int getLogUserId() {
		return logUserId;
	}
	/**
	 * @param logUserId the logUserId to set
	 */
	public void setLogUserId(int logUserId) {
		this.logUserId = logUserId;
	}
	/**
	 * @return the bussTypeId
	 */
	public int getBussTypeId() {
		return bussTypeId;
	}
	/**
	 * @param bussTypeId the bussTypeId to set
	 */
	public void setBussTypeId(int bussTypeId) {
		this.bussTypeId = bussTypeId;
	}
	/**
	 * @return the bussTypeDesc
	 */
	public String getBussTypeDesc() {
		return bussTypeDesc;
	}
	/**
	 * @param bussTypeDesc the bussTypeDesc to set
	 */
	public void setBussTypeDesc(String bussTypeDesc) {
		this.bussTypeDesc = bussTypeDesc;
	}
	/**
	 * @return the emplStatusId
	 */
	public int getEmplStatusId() {
		return emplStatusId;
	}
	/**
	 * @param emplStatusId the emplStatusId to set
	 */
	public void setEmplStatusId(int emplStatusId) {
		this.emplStatusId = emplStatusId;
	}
	/**
	 * @return the gSTRegistrationInd
	 */
	public String getgSTRegistrationInd() {
		return gSTRegistrationInd;
	}
	/**
	 * @param gSTRegistrationInd the gSTRegistrationInd to set
	 */
	public void setgSTRegistrationInd(String gSTRegistrationInd) {
		this.gSTRegistrationInd = gSTRegistrationInd;
	}
	/**
	 * @return the gSTRegistrationNo
	 */
	public String getgSTRegistrationNo() {
		return gSTRegistrationNo;
	}
	/**
	 * @param gSTRegistrationNo the gSTRegistrationNo to set
	 */
	public void setgSTRegistrationNo(String gSTRegistrationNo) {
		this.gSTRegistrationNo = gSTRegistrationNo;
	}
	/**
	 * @return the gSTRegistrationDate
	 */
	public Date getgSTRegistrationDate() {
		return gSTRegistrationDate;
	}
	/**
	 * @param gSTRegistrationDate the gSTRegistrationDate to set
	 */
	public void setgSTRegistrationDate(Date gSTRegistrationDate) {
		this.gSTRegistrationDate = gSTRegistrationDate;
	}
	/**
	 * @return the gSTExpiryDate
	 */
	public Date getgSTExpiryDate() {
		return gSTExpiryDate;
	}
	/**
	 * @param gSTExpiryDate the gSTExpiryDate to set
	 */
	public void setgSTExpiryDate(Date gSTExpiryDate) {
		this.gSTExpiryDate = gSTExpiryDate;
	}
	/**
	 * @return the sourceTypeId
	 */
	public int getSourceTypeId() {
		return sourceTypeId;
	}
	/**
	 * @param sourceTypeId the sourceTypeId to set
	 */
	public void setSourceTypeId(int sourceTypeId) {
		this.sourceTypeId = sourceTypeId;
	}
	/**
	 * @return the accountCode
	 */
	public String getAccountCode() {
		return accountCode;
	}
	/**
	 * @param accountCode the accountCode to set
	 */
	public void setAccountCode(String accountCode) {
		this.accountCode = accountCode;
	}
	/**
	 * @return the branchId
	 */
	public int getBranchId() {
		return branchId;
	}
	/**
	 * @param branchId the branchId to set
	 */
	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}
	/**
	 * @return the branchName
	 */
	public String getBranchName() {
		return branchName;
	}
	/**
	 * @param branchName the branchName to set
	 */
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	/**
	 * @return the accountName
	 */
	public String getAccountName() {
		return accountName;
	}
	/**
	 * @param accountName the accountName to set
	 */
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	/**
	 * @return the age
	 */
	public int getAge() {
		return age;
	}
	/**
	 * @param age the age to set
	 */
	public void setAge(int age) {
		this.age = age;
	}
	/**
	 * @return the vIPStatus
	 */
	public String getvIPStatus() {
		return vIPStatus;
	}
	/**
	 * @param vIPStatus the vIPStatus to set
	 */
	public void setvIPStatus(String vIPStatus) {
		this.vIPStatus = vIPStatus;
	}
	/**
	 * @return the staffInd
	 */
	public boolean isStaffInd() {
		return staffInd;
	}
	/**
	 * @param staffInd the staffInd to set
	 */
	public void setStaffInd(boolean staffInd) {
		this.staffInd = staffInd;
	}
	/**
	 * @return the remarks
	 */
	public String getRemarks() {
		return remarks;
	}
	/**
	 * @param remarks the remarks to set
	 */
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
	
	
	
}
