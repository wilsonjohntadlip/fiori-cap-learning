using { fiori.learning as db } from '../db/schema';

service ModelService {
    entity Models as projection on db.Models;
}