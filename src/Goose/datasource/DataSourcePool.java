package Goose.datasource;

import Goose.GameSettings;
import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.SQLException;

public class DataSourcePool {
    private static final ComboPooledDataSource cpds = new ComboPooledDataSource();

    static {
        try {
            cpds.setDriverClass("org.postgresql.Driver");
            cpds.setJdbcUrl(GameSettings.getDefault().getJdbcConnectString() + GameSettings.getDefault().getDatabaseAddress() + "/"
                    + GameSettings.getDefault().getDatabaseName());
            cpds.setUser(GameSettings.getDefault().getDatabaseUsername());
            cpds.setPassword(GameSettings.getDefault().getDatabasePassword());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static Connection getConnection() throws SQLException {
        return cpds.getConnection();
    }

    private DataSourcePool(){}
}
