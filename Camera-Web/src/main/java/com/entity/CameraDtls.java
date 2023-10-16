package com.entity;

public class CameraDtls {
	private int cameraId;
	private String cameraName;
	private String cameraBrand;
	private String cameraPrice;
	private String cameraCategony;
	private String status;
	private String photoName;
	private String email;

	public CameraDtls() {
		super();

	}

	public CameraDtls(String cameraName, String cameraBrand, String cameraPrice, String cameraCategony, String status,
			String photoName, String email) {
		super();

		this.cameraName = cameraName;
		this.cameraBrand = cameraBrand;
		this.cameraPrice = cameraPrice;
		this.cameraCategony = cameraCategony;
		this.status = status;
		this.photoName = photoName;
		this.email = email;
	}

	public int getCameraId() {
		return cameraId;
	}

	public void setCameraId(int cameraId) {
		this.cameraId = cameraId;
	}

	public String getCameraName() {
		return cameraName;
	}

	public void setCameraName(String cameraName) {
		this.cameraName = cameraName;
	}

	public String getCameraBrand() {
		return cameraBrand;
	}

	public void setCameraBrand(String cameraBrand) {
		this.cameraBrand = cameraBrand;
	}

	public String getCameraPrice() {
		return cameraPrice;
	}

	public void setCameraPrice(String cameraPrice) {
		this.cameraPrice = cameraPrice;
	}

	public String getCameraCategony() {
		return cameraCategony;
	}

	public void setCameraCategony(String cameraCategony) {
		this.cameraCategony = cameraCategony;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPhotoName() {
		return photoName;
	}

	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "CameraDtls [cameraId=" + cameraId + ", cameraName=" + cameraName + ", cameraBrand=" + cameraBrand
				+ ", cameraPrice=" + cameraPrice + ", cameraCategony=" + cameraCategony + ", status=" + status
				+ ", photoName=" + photoName + ", email=" + email + "]";
	}

}
