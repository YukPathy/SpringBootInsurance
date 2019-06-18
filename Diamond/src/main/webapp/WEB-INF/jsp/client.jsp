		<div width="100%">
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
																<select data-ng-model="clientdet.sourceTypeId"																	
																	data-ng-change="fnNBSourceTypeOnchange(this.clientdet);clientdet.sourceTypeId != null ? clientdet.sourceTypeId : clientdet.sourceTypeId = 0;"
																	tabindex="1">
																	<option selected="selected" value="0">--PLEASE SELECT--</option>
																	<option value="1">Admin</option>
																	<option value="2">Agent</option>
																</select>
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-4 control-label"> Account Code</label> <span
																class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7">
																<div class="input-group input-group-sm">
																	<input type="text" disabled="disabled" 
																		data-ng-init="clientdet.accountCodeDesc != null ? clientdet.accountCodeDesc : clientdet.accountCodeDesc=''"
																		data-ng-model="clientdet.accountCodeDesc" tabindex="2"
																		class="form-control" /> <span class="input-group-btn">
																		<button class="btn btn-default custom_search"
																			type="button" data-ng-disabled="staffId == 0"
																			data-ng-click="fnShowMotorSearchPopup(this.clientdet,'agencies')"
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
																		data-ng-init="clientdet.branchName != null ? clientdet.branchName : clientdet.branchName =''"
																		data-ng-model="clientdet.branchName" tabindex="2"
																		class="form-control" /> <span class="input-group-btn">
																		<button class="btn btn-default custom_search"
																			type="button" id="BRANCH_SEARCH"
																			data-ng-disabled="clientdet.sourceTypeId == 0 || dashBoardRenewal == 'Y' || staffId == 0 || referRiskMenuId > 0 || referralListingMenuId > 0 || motortransactiondet.coverNoteId > 0 || motortransactiondet.quotationId > 0 || dddlMenuId > 0"
																			data-ng-click="fnShowMotorSearchPopup(this.clientdet,'branch')"
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
																<input data-ng-model="clientdet.accountName"
																	data-ng-disabled="true"
																	data-ng-init="clientdet.accountName != null ? clientdet.accountName : clientdet.accountName =''"
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
																		data-ng-model="clientdet.searchCustomerName"
																		class="form-control" tabindex="5" /> <span
																		class="input-group-btn">
																		<button class="btn btn-default custom_search"
																			type="button"
																			data-ng-click="fnShowMotorSearchPopup(this.clientdet,'client')"
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
																<select class="form-control" data-ng-model="clientdet.contactTypeId" tabindex="8">
																	<option selected="selected" value="">--PLEASE SELECT--</option>
																	<option value="1">Individual</option>
																	<option value="2">Business</option>
																	<option value="3">Others</option>
																</select>
															</div>
														</div>
														<div class="form-group"
															data-ng-if="clientdet.contactTypeId =='1' || clientdet.contactTypeId =='3'">
															<label class="col-sm-4 control-label">New IC No
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"
																data-ng-if="clientdet.contactTypeId =='1'"></i>
															</span>
															<div class="col-sm-7">
																<input type="text" class="form-control " id="NEW_IC_NO"
																	data-ng-model="clientdet.newIcNo"
																	data-ng-init="clientdet.newIcNo != null ? clientdet.newIcNo : clientdet.newIcNo = ''"
																	placeholder="(yymmddaabbcc)"
																	data-ng-if="clientdet.contactTypeId =='1' || clientdet.contactTypeId=='3'"
																	data-ng-model-options="{ updateOn: 'blur' }"
																	data-ng-change="fnNBDuplicateIcValidation(this.clientdet,'N')"
																	maxlength="12" ngomitsplchar tabindex="9" />
															</div>
														</div>
														<div class="form-group"
															data-ng-if="clientdet.contactTypeId !='2'">
															<label class="col-sm-4 control-label">Old IC No
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"
																data-ng-if="clientdet.contactTypeId =='3'"
																data-ng-if="clientdet.contactTypeId =='3'"></i>
															</span>
															<div class="col-sm-7">
																<input type="text" data-ng-model="clientdet.oldIcNo"
																	ngomitquote id="OLD_IC_NO"
																	data-ng-model-options="{ updateOn: 'blur' }"
																	data-ng-change="fnNBDuplicateIcValidation(this.clientdet,'O')"
																	data-ng-init="clientdet.oldIcNo != null ? clientdet.oldIcNo : clientdet.oldIcNo = ''"
																	maxlength="15" class="form-control" tabindex="10" />
															</div>
														</div>
														<div class="form-group"
															data-ng-if="clientdet.contactTypeId =='2'">
															<label class="col-sm-4 control-label">Business Reg No
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"></i>
															</span>
															<div class="col-sm-7">
																<input type="text" data-ng-model="clientdet.bussRegNo"
																	ngomitquote
																	data-ng-init="clientdet.bussRegNo != null ? clientdet.bussRegNo : clientdet.bussRegNo=''"
																	maxlength="20" tabindex="6" class="form-control"
																	data-ng-if="clientdet.contactTypeId =='2'"
																	data-ng-model-options="{ updateOn: 'blur' }"
																	data-ng-change="fnNBDuplicateIcValidation(this.clientdet,'B')"
																	tabindex="11" />
															</div>
														</div>
														<div class="form-group"
															data-ng-if="clientdet.contactTypeId =='3' || clientdet.contactTypeId =='1'">
															<label class="col-sm-4 control-label">Salutation
															</label> <span class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7 selectContainer">
																<select class="form-control"
																	data-ng-model="clientdet.salutationId"
																	data-ng-init="clientdet.salutationId != null ? clientdet.salutationId : clientdet.salutationId =0"
																	data-ng-change="clientdet.salutationId != null ? clientdet.salutationId : clientdet.salutationId =0"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::clientdet.salutationList"
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
																	data-ng-model="clientdet.customerName"
																	data-ng-init="clientdet.customerName != null ? clientdet.customerName : clientdet.customerName =''"
																	tabindex="13" class="form-control" maxlength="100" />
															</div>
														</div>
														<div class="form-group"
															data-ng-if="clientdet.contactTypeId =='3' || clientdet.contactTypeId =='1'">
															<label class="col-sm-4 control-label">Nationality
															</label> <span class="col-sm-1 text-required-red"><i
																class="fa fa-asterisk"
																data-ng-if="clientdet.contactTypeId ==1"></i></span>
															<div class="col-sm-7">
																<select class="form-control" tabindex="14"
																	id="DD_NATIONALITY"
																	data-ng-disabled="clientdet.contactTypeId == 1 || (clientdet.newIcNo.length > 0 && clientdet.oldIcNo.length > 0)"
																	data-ng-model="clientdet.nationalityId"
																	data-ng-init="clientdet.nationalityId != null ? clientdet.nationalityId : clientdet.nationalityId = 0"
																	data-ng-change="clientdet.nationalityId != null ? clientdet.nationalityId : clientdet.nationalityId = 0"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::clientdet.nationalityList">
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
																	data-ng-disabled="clientdet.contactTypeId == 2"
																	data-ng-init="clientdet.raceId != null ? clientdet.raceId : clientdet.raceId =0"
																	data-ng-model="clientdet.raceId"
																	data-ng-change="clientdet.raceId != null ? clientdet.raceId : clientdet.raceId =0"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::clientdet.raceList"
																	tabindex="15">
																	<option selected="selected" value="">--PLEASE
																		SELECT--</option>
																</select>
															</div>
														</div>
														<div class="form-group"
															data-ng-show="clientdet.contactTypeId =='3' || clientdet.contactTypeId =='1'">
															<label class="col-sm-4 control-label">Date of Birth
															</label> <span class="col-sm-1 text-required-red"><i
																class="fa fa-asterisk"></i></span>
															<div class="col-sm-4">
																<div class="input-group-sm input-group date"
																	id="DATE_OF_BIRTH" custom-date-picker>
																	<input type="text" class="form-control" tabindex="16"
																		placeholder="DD-MM-YYYY" maxlength="10"
																		data-ng-disabled="clientdet.contactTypeId !='3' || clientdet.newIcNo.length == 12"
																		data-ng-model="clientdet.dateOfBirth"
																		data-ng-blur="fnNBCalculateAge(this.clientdet)"
																		data-ng-init="clientdet.dateOfBirth != null ? clientdet.dateOfBirth : clientdet.dateOfBirth =''" />
																	<span class="input-group-btn">
																		<button type="button" class="btn btn-default"
																			tabindex="14"
																			data-ng-disabled="clientdet.contactTypeId !='3' || clientdet.newIcNo.length == 12">
																			<i class="fa fa-calendar"></i>
																		</button>
																	</span>
																</div>
															</div>
															<label class="col-sm-1 text-right">Age
															</label>
															<div class="col-sm-2">
																<input type="text" data-ng-disabled="true" tabindex="17"
																	data-ng-init="clientdet.age != null || clientdet.age != 0 ? clientdet.age : clientdet.age =''"
																	data-ng-model="clientdet.age" class="form-control">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Gender
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"></i>
															</span>
															<div class="col-sm-7">
																<select class="form-control"
																	data-ng-model="clientdet.genderId"
																	data-ng-init="clientdet.genderId != null ? clientdet.genderId : clientdet.genderId = 0"
																	data-ng-change="clientdet.genderId != null ? clientdet.genderId : clientdet.genderId = 0"
																	data-ng-disabled="clientdet.contactTypeId == 1 || clientdet.contactTypeId == 2"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::clientdet.genderList">
																	<option selected="selected" value="" tabindex="18">--PLEASE
																		SELECT--</option>
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Occupation
															</label> <span class="col-sm-1 text-required-red"><i
																class="fa fa-asterisk"></i></span>
															<div class="col-sm-7">
																<select class="form-control" tabindex="21"
																	id="DD_OCCUPATION"
																	data-ng-model="clientdet.occupationId"
																	data-ng-init="clientdet.occupationId != null ? clientdet.occupationId : clientdet.occupationId = 0"
																	data-ng-change="clientdet.occupationId != null ? clientdet.occupationId : clientdet.occupationId = 0"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in clientdet.occupationList">
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
																	data-ng-model="clientdet.employmentStatusId"
																	data-ng-init="clientdet.employmentStatusId != null ? clientdet.employmentStatusId : clientdet.employmentStatusId = 0"
																	data-ng-change="clientdet.employmentStatusId != null ? clientdet.employmentStatusId : clientdet.employmentStatusId = 0"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::clientdet.empStatusList">
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
																	data-ng-model="clientdet.maritalStatusId"
																	data-ng-init="clientdet.maritalStatusId != null ? clientdet.maritalStatusId : clientdet.maritalStatusId =0"
																	data-ng-change="clientdet.maritalStatusId != null ? clientdet.maritalStatusId : clientdet.maritalStatusId =0"
																	tabindex="23"
																	data-ng-disabled="clientdet.contactTypeId == 2"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::clientdet.maritalList">
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
																		data-ng-model="clientdet.vipStatus"
																		data-ng-init="clientdet.vipStatus != null ? clientdet.vipStatus : clientdet.vipStatus ='N'"
																		value="{{option.id}}" /> <label
																		for="vipStatus{{option.id}}">{{option.name}}</label>
																</div>
															</div>
														</div>
														<div class="form-group"
															data-ng-if="clientdet.staffId != 0">
															<label class="col-sm-4 control-label">Rebate </label> <span
																class="col-sm-1 text-required-red"><i
																class="fa fa-asterisk"></i> </span>
															<div class="col-sm-7">
																<div class="radio radio-primary radio-inline"
																	data-ng-repeat="option in yesnooptions">
																	<input type="radio" ngnocase tabindex="27"
																		class="radio radio-primary"
																		id="rhbStaffInd{{option.id}}"
																		data-ng-change="fnChangeRHBStaffInd(this.clientdet)"
																		data-ng-model="clientdet.rhbStaffInd"
																		data-ng-disabled="clientdet.contactTypeId =='2'"
																		data-ng-init="clientdet.rhbStaffInd != null ? clientdet.rhbStaffInd : clientdet.rhbStaffInd ='N'"
																		value="{{option.id}}" /> <label
																		for="rhbStaffInd{{option.id}}">{{option.name}}</label>
																</div>
															</div>
														</div>														
														<div class="form-group"
															data-ng-if="clientdet.contactTypeId =='2'">
															<label class="col-sm-4 control-label">Type of Business
															</label> <span class="col-sm-1 text-required-red"> <i
																class="fa fa-asterisk"></i>
															</span>
															<div class="col-sm-7">
																<select data-ng-model="clientdet.businessTypeId"
																	ngomitsplchar tabindex="29"
																	data-ng-init="clientdet.businessTypeId != null ? clientdet.businessTypeId : clientdet.businessTypeId =0"
																	data-ng-change="clientdet.businessTypeId != null ? clientdet.businessTypeId : clientdet.businessTypeId =0"
																	data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::clientdet.businessTypeList"
																	tabindex="20" class="form-control">
																	<option selected="selected" value="">--PLEASE
																		SELECT--</option>
																</select>
															</div>
														</div>
														<div data-ng-if="clientdet.contactTypeId =='2'">
															<div class="form-group">
																<label class="col-sm-4 control-label">Business Description
																</label> <span class="col-sm-1 text-required-red"></span>
																<div class="col-sm-7">
																	<input type="text"
																		data-ng-model="clientdet.businessDesc"
																		data-ng-init="clientdet.businessDesc != null ? clientdet.businessDesc : clientdet.businessDesc =''"
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
																		data-ng-model="clientdet.gstRegistered"
																		data-ng-init="clientdet.gstRegistered != null ? clientdet.gstRegistered : clientdet.gstRegistered='Y'"
																		value="{{option.id}}" /> <label
																		for="gstRegistered{{option.id}}">{{option.name}}</label>
																</div>
															</div>
														</div>
														<div data-ng-if="clientdet.gstRegistered == 'Y'">
															<div class="form-group">
																<label class="col-sm-4 control-label">GST Registration No
																</label> <span class="col-sm-1 text-required-red"> <i
																	class="fa fa-asterisk"
																	data-ng-if="clientdet.gstRegistered == 'Y'"></i></span>
																<div class="col-sm-7">
																	<input type="text"
																		data-ng-model="clientdet.gstRegistrationNo"
																		data-ng-init="clientdet.gstRegistrationNo != null ? clientdet.gstRegistrationNo : clientdet.gstRegistrationNo=''"
																		maxlength="20" tabindex="32" ngomitsplchar
																		class="form-control" />
																</div>
															</div>
															<div class="form-group">
																<label class="col-sm-4 control-label">GST Reg Date
																</label> <span class="col-sm-1 text-required-red"> <i
																	class="fa fa-asterisk"
																	data-ng-if="clientdet.gstRegistered == 'Y'"></i>
																</span>
																<div class="col-sm-7">
																	<div class="input-group-sm input-group date"
																		id="GST_REGISTERED_DATE" custom-date-picker>
																		<input type="text" class="form-control"
																			placeholder="DD-MM-YYYY"
																			data-ng-model="clientdet.gstRegisteredDate"
																			maxlength="10"
																			data-ng-init="clientdet.gstRegisteredDate != null ? clientdet.gstRegisteredDate : clientdet.gstRegisteredDate =''"
																			data-ng-blur="fnNBValidateGSTRegDate(this.clientdet)"
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
																	data-ng-if="clientdet.gstRegistered == 'Y'"></i> -->
																</span>
																<div class="col-sm-7">
																	<div class="input-group-sm input-group date"
																		id="GST_EXPIRY_DATE" custom-date-picker>
																		<input type="text" class="form-control"
																			placeholder="DD-MM-YYYY" maxlength="10"
																			data-ng-model="clientdet.gstRegisteredExpDate"
																			data-ng-blur="fnNBValidateGSTExpiryDate(this.clientdet)"
																			data-ng-init="clientdet.gstRegisteredExpDate != null ? clientdet.gstRegisteredExpDate : clientdet.gstRegisteredExpDate =''"
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
																		data-ng-model="clientdet.websiteUrl" id="WEBSITE_URL"
																		ngomitspaces
																		data-ng-init="clientdet.websiteUrl != null ? clientdet.websiteUrl : clientdet.websiteUrl=''"
																		ngnocase class="form-control"
																		data-ng-model-options="{ updateOn: 'blur' }"
																		data-ng-change="fnNBValidateWebSiteURL(this.clientdet)"
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
																	</span> <input type="text" data-ng-model="clientdet.emailId"
																		id="EMAIL_ID"
																		data-ng-init="clientdet.emailId != null ? clientdet.emailId : clientdet.emailId =''"
																		class="form-control" ngnocase ngomitspaceswocp
																		data-ng-model-options="{ updateOn: 'blur' }"
																		data-ng-change="fnNBValidateEmailId(this.clientdet)"
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
																				<input data-ng-model="clientdet.permanentAddress1"
																					data-ng-init="clientdet.permanentAddress1 != null ? clientdet.permanentAddress1 : clientdet.permanentAddress1=''"
																					class="form-control" maxlength="30" tabindex="41" />
																			</div>
																			<div class="row form-group">
																				<input type="text"
																					data-ng-model="clientdet.permanentAddress2"
																					class="form-control" maxlength="30" tabindex="42" />
																			</div>
																			<div class="row form-group">
																				<input type="text"
																					data-ng-model="clientdet.permanentAddress3"
																					class="form-control" maxlength="30" tabindex="43" />
																			</div>
																			<div class="row form-group">
																				<input type="text"
																					data-ng-model="clientdet.permanentAddress4"
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
																						data-ng-model="clientdet.permanentPostCode"
																						data-ng-focus="true"
																						data-ng-init="clientdet.permanentPostCode != null ? clientdet.permanentPostCode : clientdet.permanentPostCode=''"
																						maxlength="5"
																						data-ng-model-options="{ updateOn: 'blur' }"
																						data-ng-change="fnNBPermanentPostCodeChange(this.clientdet)"
																						ngnumbersonly tabindex="45" class="form-control" />
																				</div>
																			</div>
																			<div class="col-md-8"
																				style="margin-left: 3px; paddidata-ng-left: 40px;">
																				<div class="form-group">
																					<input tabindex="43"
																						data-ng-model="clientdet.permanentPostCodeDesc"
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
																			<select data-ng-model="clientdet.permanentStateId"
																				data-ng-init="clientdet.permanentStateId != null ? clientdet.permanentStateId : clientdet.permanentStateId =0"
																				data-ng-disabled="true"
																				data-ng-change="clientdet.permanentStateId != null ? clientdet.permanentStateId : clientdet.permanentStateId =0"
																				data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::clientdet.stateList"
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
																				data-ng-model="clientdet.permanentCountryCode"
																				data-ng-init="clientdet.permanentCountryCode != null ? clientdet.permanentCountryCode : clientdet.permanentCountryCode =0"
																				tabindex="48"
																				data-ng-change="clientdet.permanentCountryCode != null ? clientdet.permanentCountryCode : clientdet.permanentCountryCode =0"
																				data-ng-options="options.commonutilsCode as options.commonutilsDesc for options in ::clientdet.countryList"
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
																			data-ng-model="clientdet.corrAddressindicator"
																			data-ng-change="clearCorresAddress()"
																			data-ng-init="clientdet.corrAddressindicator != null ? clientdet.corrAddressindicator : clientdet.corrAddressindicator ='N'"
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
													data-ng-show="clientdet.correspondchkind == true || clientdet.corrAddressindicator == undefined || clientdet.corrAddressindicator =='N'">
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
																				data-ng-model="clientdet.corrAddress1"
																				data-ng-init="clientdet.corrAddress1 != null ? clientdet.corrAddress1 : clientdet.corrAddress1 =''"
																				class="form-control " tabindex="50" /> <br> <input
																				type="text" maxlength="30"
																				data-ng-model="clientdet.corrAddress2"
																				class="form-control " tabindex="51" /> <br> <input
																				type="text" maxlength="30"
																				data-ng-model="clientdet.corrAddress3"
																				class="form-control " tabindex="52" /> <br> <input
																				type="text" maxlength="30"
																				data-ng-model="clientdet.corrAddress4"
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
																						data-ng-change="fnNBCorrsPostCodeChange(this.clientdet)"
																						data-ng-model="clientdet.corrPostCode"
																						data-ng-init="clientdet.corrPostCode != null ? clientdet.corrPostCode : clientdet.corrPostCode =''"
																						maxlength="5" ngnumbersonly class="form-control"
																						maxlength="5" tabindex="54" />
																				</div>
																				<div class="col-xs-8">
																					<input data-ng-model="clientdet.corrPostCodeDesc"
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
																			<select data-ng-model="clientdet.corrStateId"
																				data-ng-init="clientdet.corrStateId != null ? clientdet.corrStateId : clientdet.corrStateId =0"
																				tabindex="56" class="form-control"
																				data-ng-change="clientdet.corrStateId != null ? clientdet.corrStateId : clientdet.corrStateId =0"
																				data-ng-options="options.commonutilsId as options.commonutilsDesc for options in ::clientdet.stateList"
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
																			<select data-ng-model="clientdet.corrCountryCode"
																				data-ng-init="clientdet.corrCountryCode != null ? clientdet.corrCountryCode : clientdet.corrCountryCode =0"
																				data-ng-change="clientdet.corrCountryCode != null ? clientdet.corrCountryCode : clientdet.corrCountryCode =0"
																				tabindex="57" data-ng-disabled="true"
																				data-ng-options="options.commonutilsCode as options.commonutilsDesc for options in ::clientdet.countryList"
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
																	</span> <input type="text" data-ng-model="clientdet.mobileNo"
																		data-ng-init="clientdet.mobileNo != null ? clientdet.mobileNo : clientdet.mobileNo=''"
																		maxlength="11" minlength="10" id="MOBILE_NO"
																		class="form-control"
																		data-ng-model-options="{ updateOn: 'blur' }"
																		data-ng-change="fnNBValidateMobilePrefix(this.clientdet)"
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
																	</span> <input data-ng-model="clientdet.houseTelNo"
																		data-ng-init="clientdet.houseTelNo != null ? clientdet.houseTelNo : clientdet.houseTelNo = ''"
																		class="form-control" ngnumbersonly maxlength="30"
																		tabindex="58" />
																</div>
															</div>
														</div>
														<div class="form-group text-right">
															<div class="col-sm-12">
																<div class="checkbox checkbox-primary checkbox-single">
																	<input type="checkbox" ngnocase
																		data-ng-model="clientdet.primaryHousechk"
																		id="primaryHousechk" data-ng-true-value="'Y'"
																		data-ng-false-value="'N'" tabindex="59"
																		data-ng-change="fnCheckPrimaryContact(this.clientdet,'1')"
																		data-ng-init="clientdet.primaryHousechk != null ? clientdet.primaryHousechk : clientdet.primaryHousechk = 'N'">
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
																		data-ng-model="clientdet.officeTelNo"
																		data-ng-init="clientdet.officeTelNo != null ? clientdet.officeTelNo : clientdet.officeTelNo =''"
																		class="form-control" ngnumbersonly maxlength="30"
																		tabindex="60" />
																</div>
															</div>

														</div>
														<div class="form-group text-right">
															<div class="col-lg-12 col-md-6 ">
																<div class="checkbox checkbox-primary checkbox-single">
																	<input type="checkbox" ngnocase id="primaryOfficechk"
																		data-ng-model="clientdet.primaryOfficechk"
																		data-ng-change="fnCheckPrimaryContact(this.clientdet,'2')"
																		data-ng-true-value="'Y'" data-ng-false-value="'N'" tabindex="61"
																		data-ng-init="clientdet.primaryOfficechk != null ? clientdet.primaryOfficechk : clientdet.primaryOfficechk ='N'">
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
																		data-ng-model="clientdet.houseFaxNo"
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
																		data-ng-model="clientdet.officeFaxNo" ngnumbersonly
																		maxlength="30" tabindex="63" />
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Remarks
															</label> <span class="col-sm-1 text-required-red"></span>
															<div class="col-sm-7">
																<textarea data-ng-model="clientdet.remarks"
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
													data-ng-click="fnCheckNBClientMandatoryFields(this.clientdet) && fnSaveNBClientProfile('saveClientProfile','createClient','~','P',this.clientdet)">
													Save
												</button>
												<button class="btn  btn-icon-left btn-sm" tabindex="66"
													data-ng-click="fnNBClientReset(this.clientdet)">
													Reset
												</button>
												<button class="btn  btn-icon-left btn-sm" tabindex="67"
													data-ng-click="fnNBClientCancel(this.clientdet)">
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
