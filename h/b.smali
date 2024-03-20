.class public Lh/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/a;


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh/a;

    invoke-direct {v0, p1}, Lh/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lh/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lh/a$a;->a(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lb/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lh/a$a;->a(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lh/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v0, p1}, Lh/a$a;->a(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/util/List;)V

    return-void
.end method

.method public a(Lb/a;)Z
    .locals 1

    iget-object v0, p0, Lh/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v0, p1}, Lh/a$a;->a(Landroid/database/sqlite/SQLiteOpenHelper;Lb/a;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lh/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v0}, Lh/a$a;->a(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lh/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v0, p1}, Lh/a$a;->c(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/util/List;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lh/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v0, p1}, Lh/a$a;->b(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/util/List;)V

    return-void
.end method
