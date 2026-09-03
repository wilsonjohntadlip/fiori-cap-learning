using { fiori.learning as db } from '../db/schema';

  service AppService {
    entity Models        as projection on db.Models;
    entity Cycles        as projection on db.Cycles;
    entity ApprovalFlow  as projection on db.ApprovalFlow;
    entity BudgetRows    as projection on db.BudgetRows;
  }