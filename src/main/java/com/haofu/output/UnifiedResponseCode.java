package com.haofu.output;
public interface UnifiedResponseCode {

	/** 200 成功（RC表示ResponseCode，加这个前缀是以免跟ActionSupport定义的响应码冲突）**/
	public static final int RC_SUCC = 200;
	/** 201 成功（无需重复举报）**/
	public static final int RC_SUCC_201 = 201;
	/** 400  失败（客户端原因造成）**/
	public static final int RC_FAIL = 400;

	/** 450  失败（客户端原因造成）**/
	public static final int RC_NO_AUTHORITY = 450;
	/** 500 失败（服务端原因造成）**/
	public static final int RC_ERROR = 500;
	//501
	public static final int RC_ERROR_501 = 501;

}