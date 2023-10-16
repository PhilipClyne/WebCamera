package com.DAO;

import java.util.List;

import com.entity.CameraDtls;

public interface cameraDAO {
	public boolean addCameras(CameraDtls c);

	public List<CameraDtls> getAllCameras();

	public CameraDtls getCameraById(int id);
	
	public boolean updateUpdateCameras(CameraDtls c);
	
	public boolean deleteCameras(int id);
}
