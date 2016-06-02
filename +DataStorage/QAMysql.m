classdef QAMysql<handle
    properties
        MYSQL
        
    end
    methods
        function QM=QAMysql()
            
            
        end
        function QM=QAMysqlConnection(QM,varargin)
            QM.MYSQL.Databasename=input('Database(example:quantaxis)\n DatabBase:  ','s');
            QM.MYSQL.Username=input('UserName(example:root) \nName:  ','s');
            QM.MYSQL.Password =input('Password:  ','s');
            QM.MYSQL.Driver = 'com.mysql.jMCc.Driver';
            QM.MYSQL.Url=input('Url(example:localhost)\nURL:  ','s');
            QM.MYSQL.Databaseurl = ['jdbc:mysql://',QM.MYSQL.Url,':3306/',QM.MYSQL.Databasename];
            QM.MYSQL.Conn = database(QM.MYSQL.Databasename,QM.MYSQL.Username,QM.MYSQL.Password,QM.MYSQL.Driver,QM.MYSQL.Databaseurl);
            QM.MYSQL.Status=isopen(QM.MYSQL.Conn);
            if QM.MYSQL.Status==1
                fprintf('Connection Successfully\n')
            end
        end
    end
    methods(Access = 'private')
        function QM=Create(QM,varargin)
        end
        function QM=R(QM,varargin)
            
        end
        
    end
end
