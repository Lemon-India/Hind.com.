.class public final synthetic Le/-$$Lambda$a$b$0I9yf49YX5X3OLqkWIwNlUoibaY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Le/a$b;

.field public final synthetic f$1:Lf/e;


# direct methods
.method public synthetic constructor <init>(Le/a$b;Lf/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/-$$Lambda$a$b$0I9yf49YX5X3OLqkWIwNlUoibaY;->f$0:Le/a$b;

    iput-object p2, p0, Le/-$$Lambda$a$b$0I9yf49YX5X3OLqkWIwNlUoibaY;->f$1:Lf/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/-$$Lambda$a$b$0I9yf49YX5X3OLqkWIwNlUoibaY;->f$0:Le/a$b;

    iget-object v1, p0, Le/-$$Lambda$a$b$0I9yf49YX5X3OLqkWIwNlUoibaY;->f$1:Lf/e;

    invoke-static {v0, v1}, Le/a$b;->lambda$0I9yf49YX5X3OLqkWIwNlUoibaY(Le/a$b;Lf/e;)V

    return-void
.end method
