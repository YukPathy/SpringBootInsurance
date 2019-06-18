<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="main.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
<title>Quotation Client Details</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.7/angular.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.7/angular-route.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript">	
	var app = angular.module('Quotation_client', ['ngRoute']);
	
	// Controller Part
	app.controller('motorclientdet', function($scope, $http, $route, $routeParams, $location) {
	  
		$scope.submitUser = function() {	  
	  		$http.get("/user").then(_success, _error);
	  	}
		
	  	function _success(res) {
	  		alert('Context Path  '+<%=request.getContextPath()%>);
			$location.path(<%=request.getContextPath()%>+"/user" );
	    }
	 
	    function _error(res) {
	        var data = res.data;
	        var status = res.status;
	        var header = res.header;
	        var config = res.config;
	        alert("Error: " + status + ":" + data);
	    }
	
	});
</script>
</head>
<body>
	<div data-ng-app="Quotation_client" data-ng-controller="motorTransactionController as motorclientdet" id="MOTOR_CLIENT_PROFILE" >
		<div width="100%">
			<section>
				<!-- <form class="form-horizontal" xt-form novalidate> -->
				<form class="form-horizontal" name="ClientProfile" id="ClientProfile">
					
					<div class="box box-info" >
						<div class="box-header with-border">
							<h4 class="box-title">
								<label>Create Client</label>
							</h4>
						</div>
						<div class="content">
							<div class="row">
								<div class="col-md-12">
									<fieldset>
										<legend>
											Account Code Client Search
										</legend>
										<div class="col-md-6">
											<div class="form-horizontal">
												<fieldset class="edit-fieldset">
													<div class="">
														<div class="form-group">
															<label class="col-sm-4 control-label">Source Type
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"></i>
															</span>
															<div class="col-sm-7">
																<select data-ng-model="motorclientdet.sourceTypeId"																	
																	data-ng-change="fnNBSourceTypeOnchange(this.motorclientdet);motorclientdet.sourceTypeId != null ? motorclientdet.sourceTypeId : motorclientdet.sourceTypeId = 0;"
																	tabindex="1">
																	<option selected="selected" value="">--PLEASE SELECT--</option>
																	<option value="1">Logged in User</option>
																</select>
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-4 control-label"> Account Code</label> <span
																class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7">
																<div class="input-group input-group-sm">
																	<input type="text" disabled="disabled" 
																		data-ng-init="motorclientdet.accountCodeDesc != null ? motorclientdet.accountCodeDesc : motorclientdet.accountCodeDesc=''"
																		data-ng-model="motorclientdet.accountCodeDesc" tabindex="2"
																		class="form-control" /> <span class="input-group-btn">
																		<button class="btn btn-default custom_search"
																			type="button" data-ng-disabled="staffId == 0"
																			data-ng-click="fnShowMotorSearchPopup(this.motorclientdet,'agencies')"
																			tabindex="3">
																			<i class="fa fa-search"></i>
																		</button>
																	</span>
																</div>
															</div>
														</div>
													</div>
												</fieldset>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-horizontal">
												<fieldset class="edit-fieldset">
													<div class="">
														<div class="form-group">
															<label class="col-sm-4 control-label"> Branch
															</label> <span class="col-sm-1 text-required-red"> <i
																id="accountCodeMandatory" class="fa fa-asterisk"></i>
															</span>
															<div class="col-sm-7">
																<div class="input-group input-group-sm">
																	<input type="text" disabled="disabled"
																		data-ng-init="motorclientdet.branchName != null ? motorclientdet.branchName : motorclientdet.branchName =''"
																		data-ng-model="motorclientdet.branchName" tabindex="2"
																		class="form-control" /> <span class="input-group-btn">
																		<button class="btn btn-default custom_search"
																			type="button" id="BRANCH_SEARCH"
																			data-ng-disabled="motorclientdet.sourceTypeId == 0 || dashBoardRenewal == 'Y' || staffId == 0 || referRiskMenuId > 0 || referralListingMenuId > 0 || motortransactiondet.coverNoteId > 0 || motortransactiondet.quotationId > 0 || dddlMenuId > 0"
																			data-ng-click="fnShowMotorSearchPopup(this.motorclientdet,'branch')"
																			tabindex="2">
																			<i class="fa fa-search"></i>
																		</button>
																	</span>
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label"> Account Name
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"></i>
															</span>
															<div class="col-sm-7">
																<input data-ng-model="motorclientdet.accountName"
																	data-ng-disabled="true"
																	data-ng-init="motorclientdet.accountName != null ? motorclientdet.accountName : motorclientdet.accountName =''"
																	class="form-control" maxlength="30" tabindex="4" />
															</div>
														</div>
													</div>
												</fieldset>
											</div>
										</div>
									</fieldset>
								</div>
							</div>

							<div class="row">
								<div class="col-lg-12">
									<fieldset class="group-filedset-form">
										<legend>Client Detail</legend>

										<div class="col-md-6">
											<div class="form-horizontal">
												<fieldset class="edit-fieldset">
													<div class="">
														<div class="form-group">
															<label class="col-sm-4 control-label">Customer Name</label> <span
																class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7">
																<div class="input-group input-group-sm">
																	<input type="text" disabled="disabled"
																		data-ng-model="motorclientdet.searchCustomerName"
																		class="form-control" tabindex="5" /> <span
																		class="input-group-btn">
																		<button class="btn btn-default custom_search"
																			type="button"
																			data-ng-click="fnShowMotorSearchPopup(this.motorclientdet,'client')"
																			tabindex="6">
																			<i class="fa fa-search"></i>
																		</button>
																	</span>
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Contact Type
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"></i>
															</span>
															<div class="col-sm-7">
																<select class="form-control" data-ng-model="motorclientdet.contactTypeId" tabindex="8">
																	<option selected="selected" value="">--PLEASE SELECT--</option>
																	<option value="1">Individual</option>
																	<option value="2">Business</option>
																	<option value="3">Others</option>
																</select>
															</div>
														</div>
														<div class="form-group"
															data-ng-if="motorclientdet.contactTypeId =='1' || motorclientdet.contactTypeId =='3'">
															<label class="col-sm-4 control-label">New IC No
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"
																data-ng-if="motorclientdet.contactTypeId =='1'"></i>
															</span>
															<div class="col-sm-7">
																<input type="text" class="form-control " id="NEW_IC_NO"
																	data-ng-model="motorclientdet.newIcNo"
																	data-ng-init="motorclientdet.newIcNo != null ? motorclientdet.newIcNo : motorclientdet.newIcNo = ''"
																	placeholder="(yymmddaabbcc)"
																	data-ng-if="motorclientdet.contactTypeId =='1' || motorclientdet.contactTypeId=='3'"
																	data-ng-model-options="{ updateOn: 'blur' }"
																	data-ng-change="fnNBDuplicateIcValidation(this.motorclientdet,'N')"
																	maxlength="12" ngomitsplchar tabindex="9" />
															</div>
														</div>
														<div class="form-group"
															data-ng-if="motorclientdet.contactTypeId !='2'">
															<label class="col-sm-4 control-label">Old IC No
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"
																data-ng-if="motorclientdet.contactTypeId =='3'"
																data-ng-if="motorclientdet.contactTypeId =='3'"></i>
															</span>
															<div class="col-sm-7">
																<input type="text" data-ng-model="motorclientdet.oldIcNo"
																	ngomitquote id="OLD_IC_NO"
																	data-ng-model-options="{ updateOn: 'blur' }"
																	data-ng-change="fnNBDuplicateIcValidation(this.motorclientdet,'O')"
																	data-ng-init="motorclientdet.oldIcNo != null ? motorclientdet.oldIcNo : motorclientdet.oldIcNo = ''"
																	maxlength="15" class="form-control" tabindex="10" />
															</div>
														</div>
														<div class="form-group"
															data-ng-if="motorclientdet.contactTypeId =='2'">
															<label class="col-sm-4 control-label">Business Reg No
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"></i>
															</span>
															<div class="col-sm-7">
																<input type="text" data-ng-model="motorclientdet.bussRegNo"
																	ngomitquote
																	data-ng-init="motorclientdet.bussRegNo != null ? motorclientdet.bussRegNo : motorclientdet.bussRegNo=''"
																	maxlength="20" tabindex="6" class="form-control"
																	data-ng-if="motorclientdet.contactTypeId =='2'"
																	data-ng-model-options="{ updateOn: 'blur' }"
																	data-ng-change="fnNBDuplicateIcValidation(this.motorclientdet,'B')"
																	tabindex="11" />
															</div>
														</div>
														<div class="form-group"
															data-ng-if="motorclientdet.contactTypeId =='3' || motorclientdet.contactTypeId =='1'">
															<label class="col-sm-4 control-label">Salutation
															</label> <span class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7 selectContainer">
																<select class="form-control"
																	data-ng-model="motorclientdet.salutationId"
																	data-ng-init="motorclientdet.salutationId != null ? motorclientdet.salutationId : motorclientdet.salutationId =0"
																	data-ng-change="motorclientdet.salutationId != null ? motorclientdet.salutationId : motorclientdet.salutationId =0"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::motorclientdet.salutationList"
																	tabindex="12">
																	<option selected="selected" value="">--PLEASE
																		SELECT--</option>
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Customer Name
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"></i>
															</span>
															<div class="col-sm-7">
																<input type="text"
																	data-ng-model="motorclientdet.customerName"
																	data-ng-init="motorclientdet.customerName != null ? motorclientdet.customerName : motorclientdet.customerName =''"
																	tabindex="13" class="form-control" maxlength="100" />
															</div>
														</div>
														<div class="form-group"
															data-ng-if="motorclientdet.contactTypeId =='3' || motorclientdet.contactTypeId =='1'">
															<label class="col-sm-4 control-label">Nationality
															</label> <span class="col-sm-1 text-required-red"><i
																class="fa fa-asterisk"
																data-ng-if="motorclientdet.contactTypeId ==1"></i></span>
															<div class="col-sm-7">
																<select class="form-control" tabindex="14"
																	id="DD_NATIONALITY"
																	data-ng-disabled="motorclientdet.contactTypeId == 1 || (motorclientdet.newIcNo.length > 0 && motorclientdet.oldIcNo.length > 0)"
																	data-ng-model="motorclientdet.nationalityId"
																	data-ng-init="motorclientdet.nationalityId != null ? motorclientdet.nationalityId : motorclientdet.nationalityId = 0"
																	data-ng-change="motorclientdet.nationalityId != null ? motorclientdet.nationalityId : motorclientdet.nationalityId = 0"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::motorclientdet.nationalityList">
																	<option selected="selected" value="">--PLEASE
																		SELECT--</option>
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Race
															</label> <span class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7">
																<select class="form-control"
																	data-ng-disabled="motorclientdet.contactTypeId == 2"
																	data-ng-init="motorclientdet.raceId != null ? motorclientdet.raceId : motorclientdet.raceId =0"
																	data-ng-model="motorclientdet.raceId"
																	data-ng-change="motorclientdet.raceId != null ? motorclientdet.raceId : motorclientdet.raceId =0"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::motorclientdet.raceList"
																	tabindex="15">
																	<option selected="selected" value="">--PLEASE
																		SELECT--</option>
																</select>
															</div>
														</div>
														<div class="form-group"
															data-ng-show="motorclientdet.contactTypeId =='3' || motorclientdet.contactTypeId =='1'">
															<label class="col-sm-4 control-label">Date of Birth
															</label> <span class="col-sm-1 text-required-red"><i
																class="fa fa-asterisk"></i></span>
															<div class="col-sm-4">
																<div class="input-group-sm input-group date"
																	id="DATE_OF_BIRTH" custom-date-picker>
																	<input type="text" class="form-control" tabindex="16"
																		placeholder="DD-MM-YYYY" maxlength="10"
																		data-ng-disabled="motorclientdet.contactTypeId !='3' || motorclientdet.newIcNo.length == 12"
																		data-ng-model="motorclientdet.dateOfBirth"
																		data-ng-blur="fnNBCalculateAge(this.motorclientdet)"
																		data-ng-init="motorclientdet.dateOfBirth != null ? motorclientdet.dateOfBirth : motorclientdet.dateOfBirth =''" />
																	<span class="input-group-btn">
																		<button type="button" class="btn btn-default"
																			tabindex="14"
																			data-ng-disabled="motorclientdet.contactTypeId !='3' || motorclientdet.newIcNo.length == 12">
																			<i class="fa fa-calendar"></i>
																		</button>
																	</span>
																</div>
															</div>
															<label class="col-sm-1 text-right">Age
															</label>
															<div class="col-sm-2">
																<input type="text" data-ng-disabled="true" tabindex="17"
																	data-ng-init="motorclientdet.age != null || motorclientdet.age != 0 ? motorclientdet.age : motorclientdet.age =''"
																	data-ng-model="motorclientdet.age" class="form-control">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Gender
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"></i>
															</span>
															<div class="col-sm-7">
																<select class="form-control"
																	data-ng-model="motorclientdet.genderId"
																	data-ng-init="motorclientdet.genderId != null ? motorclientdet.genderId : motorclientdet.genderId = 0"
																	data-ng-change="motorclientdet.genderId != null ? motorclientdet.genderId : motorclientdet.genderId = 0"
																	data-ng-disabled="motorclientdet.contactTypeId == 1 || motorclientdet.contactTypeId == 2"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::motorclientdet.genderList">
																	<option selected="selected" value="" tabindex="18">--PLEASE
																		SELECT--</option>
																</select>
															</div>
														</div>
														<div class="form-group"
															data-ng-if="motorclientdet.contactTypeId == '2'">
															<label class="col-sm-4 control-label">Parent Company
															</label> <span class="col-sm-1 text-required-red"> <i
																data-ng-if="false" class="fa fa-asterisk"></i></span>
															<div class="col-sm-7">
																<div class="input-group input-group-sm">
																	<input type="text" tabindex="19"
																		data-ng-model="motorclientdet.parentCompanyDesc"
																		data-ng-init="motorclientdet.parentCompanyDesc != null ? motorclientdet.parentCompanyDesc : motorclientdet.parentCompanyDesc =''"
																		data-ng-disabled="true" class="form-control" /> <span
																		class="input-group-btn">
																		<button class="btn btn-default" type="button"
																			tabindex="20"
																			data-ng-click="fnShowMotorSearchPopup(this.motorclientdet,'parentcompany')">
																			<i class="fa fa-search"></i>
																		</button> <i class="fa fa-search"></i>
																	</span>
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Occupation
															</label> <span class="col-sm-1 text-required-red"><i
																class="fa fa-asterisk"></i></span>
															<div class="col-sm-7">
																<select class="form-control" tabindex="21"
																	id="DD_OCCUPATION"
																	data-ng-model="motorclientdet.occupationId"
																	data-ng-init="motorclientdet.occupationId != null ? motorclientdet.occupationId : motorclientdet.occupationId = 0"
																	data-ng-change="motorclientdet.occupationId != null ? motorclientdet.occupationId : motorclientdet.occupationId = 0"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in motorclientdet.occupationList">
																	<option selected="selected" value="">--PLEASE
																		SELECT--</option>
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Employment Status
															</label> <span class="col-sm-1 text-required-red"><i
																class="fa fa-asterisk"></i></span>
															<div class="col-sm-7">
																<select class="form-control" tabindex="22"
																	data-ng-model="motorclientdet.employmentStatusId"
																	data-ng-init="motorclientdet.employmentStatusId != null ? motorclientdet.employmentStatusId : motorclientdet.employmentStatusId = 0"
																	data-ng-change="motorclientdet.employmentStatusId != null ? motorclientdet.employmentStatusId : motorclientdet.employmentStatusId = 0"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::motorclientdet.empStatusList">
																	<option selected="selected" value="">--PLEASE
																		SELECT--</option>
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Marital Status
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"></i>
															</span>
															<div class="col-sm-7">
																<select class="form-control"
																	data-ng-model="motorclientdet.maritalStatusId"
																	data-ng-init="motorclientdet.maritalStatusId != null ? motorclientdet.maritalStatusId : motorclientdet.maritalStatusId =0"
																	data-ng-change="motorclientdet.maritalStatusId != null ? motorclientdet.maritalStatusId : motorclientdet.maritalStatusId =0"
																	tabindex="23"
																	data-ng-disabled="motorclientdet.contactTypeId == 2"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::motorclientdet.maritalList">
																	<option selected="selected" value="">--PLEASE
																		SELECT--</option>
																</select>
															</div>
														</div>
														<div class="form-group"
															data-ng-if="motorclientdet.staffId != 0">
															<label class="col-sm-4 control-label">No of Family Members
															</label> <span class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7">
																<input type="text"
																	data-ng-model="motorclientdet.noOfFamiyMembers"
																	data-ng-init="motorclientdet.noOfFamiyMembers != null && motorclientdet.noOfFamiyMembers != 0 ? motorclientdet.noOfFamiyMembers : motorclientdet.noOfFamiyMembers =''"
																	ngnumbersonly tabindex="24" class="form-control" />
															</div>
														</div>
														<div class="form-group"
															data-ng-if="motorclientdet.staffId != 0">
															<label class="col-sm-4 control-label">Income Range
															</label> <span class="col-sm-1 text-required-red"> </span>
															<div class="col-sm-7">
																<select data-ng-model="motorclientdet.incomeRange"
																	data-ng-init="motorclientdet.incomeRange != null ? motorclientdet.incomeRange : motorclientdet.incomeRange =0"
																	data-ng-change="motorclientdet.incomeRange != null ? motorclientdet.incomeRange : motorclientdet.incomeRange =0"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::motorclientdet.incomeRangeList"
																	tabindex="25" class="form-control">
																	<option selected="selected" value="">--PLEASE
																		SELECT--</option>
																</select>
															</div>
														</div>
														<div class="form-group"
															data-ng-if="staffId != 0 && referRiskMenuId == 0">
															<label class="col-sm-4 control-label">VIP Status
															</label> <span class="col-sm-1 text-required-red"> </span>
															<div class="col-sm-7">
																<div class="radio radio-primary radio-inline"
																	data-ng-repeat="option in yesnooptions">
																	<input type="radio" ngnocase tabindex="26"
																		class="radio radio-primary"
																		id="vipStatus{{option.id}}"
																		data-ng-model="motorclientdet.vipStatus"
																		data-ng-init="motorclientdet.vipStatus != null ? motorclientdet.vipStatus : motorclientdet.vipStatus ='N'"
																		value="{{option.id}}" /> <label
																		for="vipStatus{{option.id}}">{{option.name}}</label>
																</div>
															</div>
														</div>
														<div class="form-group"
															data-ng-if="motorclientdet.staffId != 0">
															<label class="col-sm-4 control-label">Rebate </label> <span
																class="col-sm-1 text-required-red"><i
																class="fa fa-asterisk"></i> </span>
															<div class="col-sm-7">
																<div class="radio radio-primary radio-inline"
																	data-ng-repeat="option in yesnooptions">
																	<input type="radio" ngnocase tabindex="27"
																		class="radio radio-primary"
																		id="rhbStaffInd{{option.id}}"
																		data-ng-change="fnChangeRHBStaffInd(this.motorclientdet)"
																		data-ng-model="motorclientdet.rhbStaffInd"
																		data-ng-disabled="motorclientdet.contactTypeId =='2'"
																		data-ng-init="motorclientdet.rhbStaffInd != null ? motorclientdet.rhbStaffInd : motorclientdet.rhbStaffInd ='N'"
																		value="{{option.id}}" /> <label
																		for="rhbStaffInd{{option.id}}">{{option.name}}</label>
																</div>
															</div>
														</div>														
														<div class="form-group"
															data-ng-if="motorclientdet.contactTypeId =='2'">
															<label class="col-sm-4 control-label">Type of Business
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"></i>
															</span>
															<div class="col-sm-7">
																<select data-ng-model="motorclientdet.businessTypeId"
																	ngomitsplchar tabindex="29"
																	data-ng-init="motorclientdet.businessTypeId != null ? motorclientdet.businessTypeId : motorclientdet.businessTypeId =0"
																	data-ng-change="motorclientdet.businessTypeId != null ? motorclientdet.businessTypeId : motorclientdet.businessTypeId =0"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::motorclientdet.businessTypeList"
																	tabindex="20" class="form-control">
																	<option selected="selected" value="">--PLEASE
																		SELECT--</option>
																</select>
															</div>
														</div>
														<div data-ng-if="motorclientdet.contactTypeId =='2'">
															<div class="form-group">
																<label class="col-sm-4 control-label">Business Description
																</label> <span class="col-sm-1 text-required-red"></span>
																<div class="col-sm-7">
																	<input type="text"
																		data-ng-model="motorclientdet.businessDesc"
																		data-ng-init="motorclientdet.businessDesc != null ? motorclientdet.businessDesc : motorclientdet.businessDesc =''"
																		maxlength="100" tabindex="30" class="form-control" />
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">GST Registered
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"></i>
															</span>
															<div class="col-sm-7">
																<div class="radio radio-primary radio-inline"
																	data-ng-repeat="option in yesnooptions">
																	<input type="radio" ngnocase tabindex="31"
																		id="gstRegistered{{option.id}}"
																		class="radio radio-primary"
																		data-ng-model="motorclientdet.gstRegistered"
																		data-ng-init="motorclientdet.gstRegistered != null ? motorclientdet.gstRegistered : motorclientdet.gstRegistered='Y'"
																		value="{{option.id}}" /> <label
																		for="gstRegistered{{option.id}}">{{option.name}}</label>
																</div>
															</div>
														</div>
														<div data-ng-if="motorclientdet.gstRegistered == 'Y'">
															<div class="form-group">
																<label class="col-sm-4 control-label">GST Registration No
																</label> <span class="col-sm-1 text-required-red"> <i
																	class="fa fa-asterisk"
																	data-ng-if="motorclientdet.gstRegistered == 'Y'"></i></span>
																<div class="col-sm-7">
																	<input type="text"
																		data-ng-model="motorclientdet.gstRegistrationNo"
																		data-ng-init="motorclientdet.gstRegistrationNo != null ? motorclientdet.gstRegistrationNo : motorclientdet.gstRegistrationNo=''"
																		maxlength="20" tabindex="32" ngomitsplchar
																		class="form-control" />
																</div>
															</div>
															<div class="form-group">
																<label class="col-sm-4 control-label">GST Reg Date
																</label> <span class="col-sm-1 text-required-red"> <i
																	class="fa fa-asterisk"
																	data-ng-if="motorclientdet.gstRegistered == 'Y'"></i>
																</span>
																<div class="col-sm-7">
																	<div class="input-group-sm input-group date"
																		id="GST_REGISTERED_DATE" custom-date-picker>
																		<input type="text" class="form-control"
																			placeholder="DD-MM-YYYY"
																			data-ng-model="motorclientdet.gstRegisteredDate"
																			maxlength="10"
																			data-ng-init="motorclientdet.gstRegisteredDate != null ? motorclientdet.gstRegisteredDate : motorclientdet.gstRegisteredDate =''"
																			data-ng-blur="fnNBValidateGSTRegDate(this.motorclientdet)"
																			tabindex="33" /> <span class="input-group-btn">
																			<button type="button" class="btn btn-default"
																				tabindex="34">
																				<i class="fa fa-calendar"></i>
																			</button>
																		</span>
																	</div>
																</div>
															</div>

															<div class="form-group">
																<label class="col-sm-4 control-label">GST Reg Exp Date
																</label> <span class="col-sm-1 text-required-red"> <!-- <i
																	class="fa fa-asterisk"
																	data-ng-if="motorclientdet.gstRegistered == 'Y'"></i> -->
																</span>
																<div class="col-sm-7">
																	<div class="input-group-sm input-group date"
																		id="GST_EXPIRY_DATE" custom-date-picker>
																		<input type="text" class="form-control"
																			placeholder="DD-MM-YYYY" maxlength="10"
																			data-ng-model="motorclientdet.gstRegisteredExpDate"
																			data-ng-blur="fnNBValidateGSTExpiryDate(this.motorclientdet)"
																			data-ng-init="motorclientdet.gstRegisteredExpDate != null ? motorclientdet.gstRegisteredExpDate : motorclientdet.gstRegisteredExpDate =''"
																			tabindex="35" /> <span class="input-group-btn">
																			<button type="button" class="btn btn-default"
																				tabindex="36">
																				<i class="fa fa-calendar"></i>
																			</button>
																		</span>
																	</div>
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Website
															</label> <span class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7">
																<div class="input-group input-group-sm">
																	<span class="input-group-btn">
																		<button class="btn btn-default" type="button">
																			<i class="fa fa-globe"></i>
																		</button>
																	</span> <input type="text"
																		data-ng-model="motorclientdet.websiteUrl" id="WEBSITE_URL"
																		ngomitspaces
																		data-ng-init="motorclientdet.websiteUrl != null ? motorclientdet.websiteUrl : motorclientdet.websiteUrl=''"
																		ngnocase class="form-control"
																		data-ng-model-options="{ updateOn: 'blur' }"
																		data-ng-change="fnNBValidateWebSiteURL(this.motorclientdet)"
																		tabindex="37" />
																</div>
															</div>
														</div>
														
														<div class="form-group">
															<label class="col-sm-4 control-label">Email
															</label> <span class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7">
																<div class="input-group input-group-sm">
																	<span class="input-group-btn">
																		<button class="btn btn-default" type="button">
																			<i class="fa fa-envelope-o"></i>
																		</button>
																	</span> <input type="text" data-ng-model="motorclientdet.emailId"
																		id="EMAIL_ID"
																		data-ng-init="motorclientdet.emailId != null ? motorclientdet.emailId : motorclientdet.emailId =''"
																		class="form-control" ngnocase ngomitspaceswocp
																		data-ng-model-options="{ updateOn: 'blur' }"
																		data-ng-change="fnNBValidateEmailId(this.motorclientdet)"
																		maxlength="100" tabindex="40" />
																</div>
															</div>
														</div>
													</div>
												</fieldset>
											</div>
										</div>
										<div class="col-md-6">
											<div class="col-md-12">
												<fieldset>
													<legend>Address
													</legend>
													<div class="col-md-12 col-xs-12">
														<div class="form-horizontal">
															<fieldset class="edit-fieldset"	style="paddidata-ng-right: 25px;">
																<div class="">
																	<div class="form-group">
																		<label class="col-sm-4 control-label"> Address
																		</label> <span class="col-sm-1 text-required-red"> <i
																			class="fa fa-asterisk"></i>
																		</span>
																		<div class="col-sm-7">
																			<div class="row form-group">
																				<input data-ng-model="motorclientdet.permanentAddress1"
																					data-ng-init="motorclientdet.permanentAddress1 != null ? motorclientdet.permanentAddress1 : motorclientdet.permanentAddress1=''"
																					class="form-control" maxlength="30" tabindex="41" />
																			</div>
																			<div class="row form-group">
																				<input type="text"
																					data-ng-model="motorclientdet.permanentAddress2"
																					class="form-control" maxlength="30" tabindex="42" />
																			</div>
																			<div class="row form-group">
																				<input type="text"
																					data-ng-model="motorclientdet.permanentAddress3"
																					class="form-control" maxlength="30" tabindex="43" />
																			</div>
																			<div class="row form-group">
																				<input type="text"
																					data-ng-model="motorclientdet.permanentAddress4"
																					class="form-control" maxlength="30" tabindex="44" />
																			</div>
																		</div>
																	</div>
																	<div class="form-group" style="margin-top: -5px;">
																		<label class="col-sm-4 control-label">Postcode
																		</label> <span class="col-sm-1 text-required-red"> <i
																			class="fa fa-asterisk"></i>
																		</span>
																		<div class="col-sm-7">
																			<div class="col-md-4"
																				style="margin-left: -3px; paddidata-ng-left: 3px;">
																				<div class="form-group">
																					<input type="text" id="PERM_POST_CODE"
																						data-ng-model="motorclientdet.permanentPostCode"
																						data-ng-focus="true"
																						data-ng-init="motorclientdet.permanentPostCode != null ? motorclientdet.permanentPostCode : motorclientdet.permanentPostCode=''"
																						maxlength="5"
																						data-ng-model-options="{ updateOn: 'blur' }"
																						data-ng-change="fnNBPermanentPostCodeChange(this.motorclientdet)"
																						ngnumbersonly tabindex="45" class="form-control" />
																				</div>
																			</div>
																			<div class="col-md-8"
																				style="margin-left: 3px; paddidata-ng-left: 40px;">
																				<div class="form-group">
																					<input tabindex="43"
																						data-ng-model="motorclientdet.permanentPostCodeDesc"
																						tabindex="46" data-ng-disabled="true"
																						class="form-control" />
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="form-group"
																		style="margin-top: -5px; margin-right: -45px;">
																		<label class="col-sm-4 control-label"> State / Country
																		</label> <span class="col-sm-1 text-required-red"></span>
																		<div class="col-sm-7 form-group"
																			style="margin-right: -40px">
																			<select data-ng-model="motorclientdet.permanentStateId"
																				data-ng-init="motorclientdet.permanentStateId != null ? motorclientdet.permanentStateId : motorclientdet.permanentStateId =0"
																				data-ng-disabled="true"
																				data-ng-change="motorclientdet.permanentStateId != null ? motorclientdet.permanentStateId : motorclientdet.permanentStateId =0"
																				data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::motorclientdet.stateList"
																				tabindex="47" class="form-control">
																				<option selected="selected" value="">--PLEASE
																					SELECT--</option>
																			</select>
																		</div>
																	</div>
																	<div class="form-group ">
																		<label class="col-sm-4 control-label">Country Code
																		</label> <span class="col-sm-1 text-required-red"> <i
																			class="fa fa-asterisk"></i>
																		</span>
																		<div class="col-sm-7">
																			<select
																				data-ng-model="motorclientdet.permanentCountryCode"
																				data-ng-init="motorclientdet.permanentCountryCode != null ? motorclientdet.permanentCountryCode : motorclientdet.permanentCountryCode =0"
																				tabindex="48"
																				data-ng-change="motorclientdet.permanentCountryCode != null ? motorclientdet.permanentCountryCode : motorclientdet.permanentCountryCode =0"
																				data-ng-options="options.commonutilsCode as options.commonutilsDesc for options in ::motorclientdet.countryList"
																				data-ng-disabled="true" class="form-control">
																				<option selected="selected" value="">--PLEASE
																					SELECT--</option>
																			</select>
																		</div>
																	</div>
																</div>
															</fieldset>
														</div>
													</div>
												</fieldset>
											</div>
											<div class="col-md-12">
												<div class="form-horizontal">
													<fieldset class="edit-fieldset"
														style="paddidata-ng-right: 25px;">
														<div class="">
															<div class="form-group">
																<label class="col-sm-7 control-label">Corresponding Address is Same as Permanent Address?</label> <span
																	class="col-sm-1 text-required-red"> <i
																	class="fa fa-asterisk"></i>
																</span>
																<div class="col-sm-4">
																	<div class="radio radio-primary radio-inline"
																		data-ng-repeat="option in yesnooptions">
																		<input type="radio" ngnocase tabindex="49"
																			class="radio radio-primary"
																			id="corrAddressindicator{{option.id}}"
																			data-ng-model="motorclientdet.corrAddressindicator"
																			data-ng-change="clearCorresAddress()"
																			data-ng-init="motorclientdet.corrAddressindicator != null ? motorclientdet.corrAddressindicator : motorclientdet.corrAddressindicator ='N'"
																			value="{{option.id}}" /> <label
																			for="corrAddressindicator{{option.id}}">{{option.name}}</label>
																	</div>
																</div>
															</div>
														</div>
													</fieldset>
												</div>
											</div>
											<div class="col-md-12">
												<fieldset
													data-ng-show="motorclientdet.correspondchkind == true || motorclientdet.corrAddressindicator == undefined || motorclientdet.corrAddressindicator =='N'">
													<legend>Corresponding Address</legend>
													<div class="col-md-12 col-xs-12">
														<div class="form-horizontal">
															<fieldset class="edit-fieldset"
																style="paddidata-ng-right: 25px;">
																<div class="">
																	<div class="form-group">
																		<label class="col-sm-4 control-label">Address</label> <span
																			class="col-sm-1 text-required-red"><i
																			class="fa fa-asterisk"></i></span>
																		<div class="col-sm-7">
																			<input type="text" maxlength="30"
																				data-ng-model="motorclientdet.corrAddress1"
																				data-ng-init="motorclientdet.corrAddress1 != null ? motorclientdet.corrAddress1 : motorclientdet.corrAddress1 =''"
																				class="form-control " tabindex="50" /> <br> <input
																				type="text" maxlength="30"
																				data-ng-model="motorclientdet.corrAddress2"
																				class="form-control " tabindex="51" /> <br> <input
																				type="text" maxlength="30"
																				data-ng-model="motorclientdet.corrAddress3"
																				class="form-control " tabindex="52" /> <br> <input
																				type="text" maxlength="30"
																				data-ng-model="motorclientdet.corrAddress4"
																				class="form-control " tabindex="53" /> <br>
																		</div>
																	</div>
																	<div class="form-group ">
																		<label class="col-sm-4 control-label">PostCode
																		</label> <span class="col-sm-1 text-required-red"> <i
																			class="fa fa-asterisk"></i>
																		</span>
																		<div class="col-sm-7">
																			<div class="row row-margin-minus">
																				<div class="col-xs-4">
																					<input type="text" id="CORR_POST_CODE"
																						data-ng-model-options="{ updateOn: 'blur' }"
																						data-ng-change="fnNBCorrsPostCodeChange(this.motorclientdet)"
																						data-ng-model="motorclientdet.corrPostCode"
																						data-ng-init="motorclientdet.corrPostCode != null ? motorclientdet.corrPostCode : motorclientdet.corrPostCode =''"
																						maxlength="5" ngnumbersonly class="form-control"
																						maxlength="5" tabindex="54" />
																				</div>
																				<div class="col-xs-8">
																					<input data-ng-model="motorclientdet.corrPostCodeDesc"
																						tabindex="55" data-ng-disabled="true"
																						class="form-control" />
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="form-group ">
																		<label class="col-sm-4 control-label">State / Country
																		</label> <span class="col-sm-1 text-required-red"></span>
																		<div class="col-sm-7">
																			<select data-ng-model="motorclientdet.corrStateId"
																				data-ng-init="motorclientdet.corrStateId != null ? motorclientdet.corrStateId : motorclientdet.corrStateId =0"
																				tabindex="56" class="form-control"
																				data-ng-change="motorclientdet.corrStateId != null ? motorclientdet.corrStateId : motorclientdet.corrStateId =0"
																				data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::motorclientdet.stateList"
																				data-ng-disabled="true">
																				<option selected="selected" value="">--PLEASE
																					SELECT--</option>
																			</select>
																		</div>
																	</div>
																	<div class="form-group ">
																		<label class="col-sm-4 control-label">Country Code
																		</label> <span class="col-sm-1 text-required-red"> <i
																			class="fa fa-asterisk"></i>
																		</span>
																		<div class="col-sm-7">
																			<select data-ng-model="motorclientdet.corrCountryCode"
																				data-ng-init="motorclientdet.corrCountryCode != null ? motorclientdet.corrCountryCode : motorclientdet.corrCountryCode =0"
																				data-ng-change="motorclientdet.corrCountryCode != null ? motorclientdet.corrCountryCode : motorclientdet.corrCountryCode =0"
																				tabindex="57" data-ng-disabled="true"
																				data-ng-options="options.commonutilsCode as options.commonutilsDesc for options in ::motorclientdet.countryList"
																				class="form-control">
																				<option value="" selected="selected">--PLEASE
																					SELECT--</option>
																			</select>
																		</div>
																	</div>
																</div>
															</fieldset>
														</div>
													</div>
												</fieldset>
											</div>
											<div class="col-md-12">
												<fieldset class="edit-fieldset">
													<div class="">
														<div class="form-group">
															<label class="col-sm-4 control-label">Mobile No
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk" data-ng-if="false"></i>
															</span>
															<div class="col-sm-7">
																<div class="input-group input-group-sm">
																	<span class="input-group-btn">
																		<button class="btn btn-default" type="button"
																			style="padding: 0px 12px;">
																			<i class="fa fa-mobile" style="font-size: 22px;"></i>
																		</button>
																	</span> <input type="text" data-ng-model="motorclientdet.mobileNo"
																		data-ng-init="motorclientdet.mobileNo != null ? motorclientdet.mobileNo : motorclientdet.mobileNo=''"
																		maxlength="11" minlength="10" id="MOBILE_NO"
																		class="form-control"
																		data-ng-model-options="{ updateOn: 'blur' }"
																		data-ng-change="fnNBValidateMobilePrefix(this.motorclientdet)"
																		tabindex="39" />
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Telephone No (Resi)
															</label> <span class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7">
																<div class="input-group input-group-sm">
																	<span class="input-group-btn">
																		<button class="btn btn-default" type="button">
																			<i class="fa fa-phone"></i>
																		</button>
																	</span> <input data-ng-model="motorclientdet.houseTelNo"
																		data-ng-init="motorclientdet.houseTelNo != null ? motorclientdet.houseTelNo : motorclientdet.houseTelNo = ''"
																		class="form-control" ngnumbersonly maxlength="30"
																		tabindex="58" />
																</div>
															</div>
														</div>
														<div class="form-group text-right">
															<div class="col-sm-12">
																<div class="checkbox checkbox-primary checkbox-single">
																	<input type="checkbox" ngnocase
																		data-ng-model="motorclientdet.primaryHousechk"
																		id="primaryHousechk" data-ng-true-value="'Y'"
																		data-ng-false-value="'N'" tabindex="59"
																		data-ng-change="fnCheckPrimaryContact(this.motorclientdet,'1')"
																		data-ng-init="motorclientdet.primaryHousechk != null ? motorclientdet.primaryHousechk : motorclientdet.primaryHousechk = 'N'">
																	<label for="primaryHousechk">Primary Contact</label>
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Telephone No (Office)
															</label> <span class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7">
																<div class="input-group input-group-sm">
																	<span class="input-group-btn">
																		<button class="btn btn-default" type="button">
																			<i class="fa fa-phone"></i>
																		</button>
																	</span> <input type="text"
																		data-ng-model="motorclientdet.officeTelNo"
																		data-ng-init="motorclientdet.officeTelNo != null ? motorclientdet.officeTelNo : motorclientdet.officeTelNo =''"
																		class="form-control" ngnumbersonly maxlength="30"
																		tabindex="60" />
																</div>
															</div>

														</div>
														<div class="form-group text-right">
															<div class="col-lg-12 col-md-6 ">
																<div class="checkbox checkbox-primary checkbox-single">
																	<input type="checkbox" ngnocase id="primaryOfficechk"
																		data-ng-model="motorclientdet.primaryOfficechk"
																		data-ng-change="fnCheckPrimaryContact(this.motorclientdet,'2')"
																		data-ng-true-value="'Y'" data-ng-false-value="'N'" tabindex="61"
																		data-ng-init="motorclientdet.primaryOfficechk != null ? motorclientdet.primaryOfficechk : motorclientdet.primaryOfficechk ='N'">
																	<label for="primaryOfficechk">Primary Address</label>
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Fax No (Resi)
															</label> <span class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7">
																<div class="input-group input-group-sm">
																	<span class="input-group-btn">
																		<button class="btn btn-default" type="button">
																			<i class="fa fa-fax"></i>
																		</button>
																	</span> <input type="text"
																		data-ng-model="motorclientdet.houseFaxNo"
																		class="form-control" ngnumbersonly maxlength="30"
																		tabindex="62" />
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Fax No (Office)
															</label> <span class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7">
																<div class="input-group input-group-sm">
																	<span class="input-group-btn">
																		<button class="btn btn-default" type="button">
																			<i class="fa fa-fax"></i>
																		</button>
																	</span> <input type="text" class="form-control"
																		data-ng-model="motorclientdet.officeFaxNo" ngnumbersonly
																		maxlength="30" tabindex="63" />
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Remarks
															</label> <span class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7">
																<textarea data-ng-model="motorclientdet.remarks"
																	maxlength="500" class="form-control" tabindex="64"></textarea>
															</div>
														</div>
													</div>
												</fieldset>
											</div>
										</div>
									</fieldset>
									<div class="row">
										<div class="box-body text-center">
											<div class="col-lg-12">
												<button class="btn  btn-icon-left btn-sm" tabindex="65"
													data-ng-click="fnCheckNBClientMandatoryFields(this.motorclientdet) && fnSaveNBClientProfile('saveClientProfile','createClient','~','P',this.motorclientdet)">
													Save
												</button>
												<button class="btn  btn-icon-left btn-sm" tabindex="66"
													data-ng-click="fnNBClientReset(this.motorclientdet)">
													Reset
												</button>
												<button class="btn  btn-icon-left btn-sm" tabindex="67"
													data-ng-click="fnNBClientCancel(this.motorclientdet)">
													Cancel
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>

		</div>
	</div>

</body>
</html>