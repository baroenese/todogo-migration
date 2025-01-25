-- CreateTable
CREATE TABLE "todolist" (
    "id" BYTEA NOT NULL,
    "title" TEXT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "done_at" TIMESTAMPTZ,
    -- "is_done" BOOLEAN,

    CONSTRAINT "todolist_pkey" PRIMARY KEY ("id")
);

ALTER TABLE "todolist"
ADD COLUMN "is_done" BOOLEAN GENERATED ALWAYS AS (
  "done_at" IS NOT NULL
) STORED;
