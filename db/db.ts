import * as pg from 'pg';
import { User } from '../util/types';

export class DB {

    pool : pg.Pool;

    constructor(role : {user : string, password: string}) {

        const config = require('../config/config');
        const db_config = config.db;

        db_config.user = role.user;
        db_config.password = role.password;

        db_config.max = 10;
        db_config.idleTimeoutMillis;

        this.pool = new pg.Pool(db_config);
        this.pool.on('error', (err) => {
            console.log("Client Error:", err.message, err.stack);
        })
    }

    async query(text : string, values : any[]) {
        try {
            if (values){
                console.log('query:', text, values);
            }
            else {
                console.log(`query: ${text}`);
            }
            return this.pool.query(text, values);
        }
        catch(err) {
            console.log('Error with pg query');
            throw err;
        }
    }

    async selectByStudyID(studyID : string) {
        try{
            let ret: pg.QueryResult =
                await this.query('select * from users where study_id = $1', [studyID]);
            return ret.rows[0];

        } catch(err) {
            console.log(`Error selecting user for studyID: ${studyID}, Error: ${err}`);
        }
    }

    async insertUser(user : User) {
        try {
            let selectedUser : User = await this.selectByStudyID(user.study_id);
            if(selectedUser) {
                console.log(`User with studyID: ${user.study_id} already exists.`);
                return;
            }
            await this.query(
                'insert into users(study_id, password_hash, last_auth, date_created) values ($1, $2, now(), now())',
                [user.study_id, user.password_hash]
            );
        }
        catch(err) {
            console.log(`Error inserting user details inserted for studyID: ${user.study_id}, Error: ${err}`);
            throw err;
        }
    }
}