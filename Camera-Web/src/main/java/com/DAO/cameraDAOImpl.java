package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.CameraDtls;

public class cameraDAOImpl implements cameraDAO {

	private Connection conn;

	public cameraDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addCameras(CameraDtls c) {
		boolean f = false;
		try {
			String sql = "insert into camera_dtls(camera_name, camera_brand,camera_price, camera_categony,status,photo, email) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, c.getCameraName());
			ps.setString(2, c.getCameraBrand());
			ps.setString(3, c.getCameraPrice());
			ps.setString(4, c.getCameraCategony());
			ps.setString(5, c.getStatus());
			ps.setString(6, c.getPhotoName());
			ps.setString(7, c.getEmail());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	@Override
	public List<CameraDtls> getAllCameras() {
		List<CameraDtls> list = new ArrayList<CameraDtls>();
		CameraDtls c = null;
		try {
			String sql = "select * from camera_dtls";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				c = new CameraDtls();
				c.setCameraId(rs.getInt(1));
				c.setCameraName(rs.getString(2));
				c.setCameraBrand(rs.getString(3));
				c.setCameraPrice(rs.getString(4));
				c.setCameraCategony(rs.getString(5));
				c.setStatus(rs.getNString(6));
				c.setPhotoName(rs.getNString(7));
				c.setEmail(rs.getString(8));
				list.add(c);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public CameraDtls getCameraById(int id) {
		CameraDtls c = null;
		try {
			String sql = "select * from camera_dtls where cameraId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				c = new CameraDtls();
				c.setCameraId(rs.getInt(1));
				c.setCameraName(rs.getString(2));
				c.setCameraBrand(rs.getString(3));
				c.setCameraPrice(rs.getString(4));
				c.setCameraCategony(rs.getString(5));
				c.setStatus(rs.getNString(6));
				c.setPhotoName(rs.getNString(7));
			}

			;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return c;
	}

	@Override
	public boolean updateUpdateCameras(CameraDtls c) {
		boolean f = false;
		try {
			String sql = "update camera_dtls set camera_name=?, camera_brand=?,camera_price=?, status=? where cameraId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, c.getCameraName());
			ps.setString(2, c.getCameraBrand());
			ps.setString(3, c.getCameraPrice());
			ps.setString(4, c.getStatus());
			ps.setInt(5, c.getCameraId());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public boolean deleteCameras(int id) {
		boolean f = false;
		try {
			String sql = "delete from camera_dtls where cameraId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

}
