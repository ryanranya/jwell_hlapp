class LoginPassWordAndAccountViewModel {
  bool success;
  String statusCode;
  String code;
  String data;
  String refreshToken;
  User user;

  LoginPassWordAndAccountViewModel(
      {this.success,
        this.statusCode,
        this.code,
        this.data,
        this.refreshToken,
        this.user});

  LoginPassWordAndAccountViewModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    statusCode = json['statusCode'];
    code = json['code'];
    data = json['data'];
    refreshToken = json['refreshToken'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['statusCode'] = this.statusCode;
    data['code'] = this.code;
    data['data'] = this.data;
    data['refreshToken'] = this.refreshToken;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  String id;
  String accountId;
  String createId;
  String createName;
  String createTime;
  String updateId;
  String updateName;
  String updateTime;
  String userName;
  String nickName;
  String userCode;
  String password;
  String age;
  String sex;
  String profile;
  String phoneNum;
  String loginTimes;
  String address;
  String email;
  String orgId;
  String status;
  String remark;
  String workPhone;
  String headChar;
  String fullChar;
  String accountTime;
  String accountName;
  String orgName;
  String jobNumber;
  String accountStatus;
  String loginStatus;
  String companySysNo;
  String userType;
  String hcAdmin;
  String post;
  String partOrgIds;
  String verifyCode;
  List<String> partorgs;
  String bindReg;
  String code;
  String token;

  User(
      {this.id,
        this.accountId,
        this.createId,
        this.createName,
        this.createTime,
        this.updateId,
        this.updateName,
        this.updateTime,
        this.userName,
        this.nickName,
        this.userCode,
        this.password,
        this.age,
        this.sex,
        this.profile,
        this.phoneNum,
        this.loginTimes,
        this.address,
        this.email,
        this.orgId,
        this.status,
        this.remark,
        this.workPhone,
        this.headChar,
        this.fullChar,
        this.accountTime,
        this.accountName,
        this.orgName,
        this.jobNumber,
        this.accountStatus,
        this.loginStatus,
        this.companySysNo,
        this.userType,
        this.hcAdmin,
        this.post,
        this.partOrgIds,
        this.verifyCode,
        this.partorgs,
        this.bindReg,
        this.code,
        this.token});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    accountId = json['accountId'];
    createId = json['createId'];
    createName = json['createName'];
    createTime = json['createTime'];
    updateId = json['updateId'];
    updateName = json['updateName'];
    updateTime = json['updateTime'];
    userName = json['userName'];
    nickName = json['nickName'];
    userCode = json['userCode'];
    password = json['password'];
    age = json['age'];
    sex = json['sex'];
    profile = json['profile'];
    phoneNum = json['phoneNum'];
    loginTimes = json['loginTimes'];
    address = json['address'];
    email = json['email'];
    orgId = json['orgId'];
    status = json['status'];
    remark = json['remark'];
    workPhone = json['workPhone'];
    headChar = json['headChar'];
    fullChar = json['fullChar'];
    accountTime = json['accountTime'];
    accountName = json['accountName'];
    orgName = json['orgName'];
    jobNumber = json['jobNumber'];
    accountStatus = json['accountStatus'];
    loginStatus = json['loginStatus'];
    companySysNo = json['companySysNo'];
    userType = json['userType'];
    hcAdmin = json['hcAdmin'];
    post = json['post'];
    partOrgIds = json['partOrgIds'];
    verifyCode = json['verifyCode'];
    partorgs = json['partorgs'].cast<String>();
    bindReg = json['bindReg'];
    code = json['code'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['accountId'] = this.accountId;
    data['createId'] = this.createId;
    data['createName'] = this.createName;
    data['createTime'] = this.createTime;
    data['updateId'] = this.updateId;
    data['updateName'] = this.updateName;
    data['updateTime'] = this.updateTime;
    data['userName'] = this.userName;
    data['nickName'] = this.nickName;
    data['userCode'] = this.userCode;
    data['password'] = this.password;
    data['age'] = this.age;
    data['sex'] = this.sex;
    data['profile'] = this.profile;
    data['phoneNum'] = this.phoneNum;
    data['loginTimes'] = this.loginTimes;
    data['address'] = this.address;
    data['email'] = this.email;
    data['orgId'] = this.orgId;
    data['status'] = this.status;
    data['remark'] = this.remark;
    data['workPhone'] = this.workPhone;
    data['headChar'] = this.headChar;
    data['fullChar'] = this.fullChar;
    data['accountTime'] = this.accountTime;
    data['accountName'] = this.accountName;
    data['orgName'] = this.orgName;
    data['jobNumber'] = this.jobNumber;
    data['accountStatus'] = this.accountStatus;
    data['loginStatus'] = this.loginStatus;
    data['companySysNo'] = this.companySysNo;
    data['userType'] = this.userType;
    data['hcAdmin'] = this.hcAdmin;
    data['post'] = this.post;
    data['partOrgIds'] = this.partOrgIds;
    data['verifyCode'] = this.verifyCode;
    data['partorgs'] = this.partorgs;
    data['bindReg'] = this.bindReg;
    data['code'] = this.code;
    data['token'] = this.token;
    return data;
  }
}