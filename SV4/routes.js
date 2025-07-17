import express from 'express';

const router = express.Router();

import { router as routerFromJournals } from "./Journals/routes.js";
import { router as routerFromReceiptsTable } from "./ReceiptsTable/routes.js";
import { router as routerFromAccountsTable } from "./AccountsTable/routes.js";

router.use("/Journals", routerFromJournals);
router.use("/ReceiptsTable", routerFromReceiptsTable);
router.use("/AccountsTable", routerFromAccountsTable);

export { router };