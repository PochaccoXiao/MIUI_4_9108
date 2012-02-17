.class Lcom/android/server/PackageManagerService$PreferredActivity;
.super Landroid/content/IntentFilter;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreferredActivity"
.end annotation


# instance fields
.field final mActivity:Landroid/content/ComponentName;

.field final mMatch:I

.field mParseError:Ljava/lang/String;

.field final mSetClasses:[Ljava/lang/String;

.field final mSetComponents:[Ljava/lang/String;

.field final mSetPackages:[Ljava/lang/String;

.field final mShortActivity:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 8
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    const/4 v7, 0x0

    .line 7877
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 7878
    const/high16 v6, 0xfff

    and-int/2addr v6, p2

    iput v6, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mMatch:I

    .line 7879
    iput-object p4, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    .line 7880
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    .line 7881
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    .line 7882
    if-eqz p3, :cond_2

    .line 7883
    array-length v0, p3

    .line 7884
    .local v0, N:I
    new-array v5, v0, [Ljava/lang/String;

    .line 7885
    .local v5, myPackages:[Ljava/lang/String;
    new-array v3, v0, [Ljava/lang/String;

    .line 7886
    .local v3, myClasses:[Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    .line 7887
    .local v4, myComponents:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7888
    aget-object v1, p3, v2

    .line 7889
    .local v1, cn:Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 7890
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetPackages:[Ljava/lang/String;

    .line 7891
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetClasses:[Ljava/lang/String;

    .line 7892
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetComponents:[Ljava/lang/String;

    .line 7907
    .end local v0           #N:I
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v2           #i:I
    .end local v3           #myClasses:[Ljava/lang/String;
    .end local v4           #myComponents:[Ljava/lang/String;
    .end local v5           #myPackages:[Ljava/lang/String;
    :goto_1
    return-void

    .line 7895
    .restart local v0       #N:I
    .restart local v1       #cn:Landroid/content/ComponentName;
    .restart local v2       #i:I
    .restart local v3       #myClasses:[Ljava/lang/String;
    .restart local v4       #myComponents:[Ljava/lang/String;
    .restart local v5       #myPackages:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 7896
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 7897
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 7887
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7899
    .end local v1           #cn:Landroid/content/ComponentName;
    :cond_1
    iput-object v5, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetPackages:[Ljava/lang/String;

    .line 7900
    iput-object v3, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetClasses:[Ljava/lang/String;

    .line 7901
    iput-object v4, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetComponents:[Ljava/lang/String;

    goto :goto_1

    .line 7903
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #myClasses:[Ljava/lang/String;
    .end local v4           #myComponents:[Ljava/lang/String;
    .end local v5           #myPackages:[Ljava/lang/String;
    :cond_2
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetPackages:[Ljava/lang/String;

    .line 7904
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetClasses:[Ljava/lang/String;

    .line 7905
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetComponents:[Ljava/lang/String;

    goto :goto_1
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 18
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7910
    invoke-direct/range {p0 .. p0}, Landroid/content/IntentFilter;-><init>()V

    .line 7911
    const/4 v15, 0x0

    const-string v16, "name"

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    .line 7912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    move-object v15, v0

    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    .line 7913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    move-object v15, v0

    if-nez v15, :cond_0

    .line 7914
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad activity name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    .line 7916
    :cond_0
    const/4 v15, 0x0

    const-string v16, "match"

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7917
    .local v4, matchStr:Ljava/lang/String;
    if-eqz v4, :cond_4

    const/16 v15, 0x10

    invoke-static {v4, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    :goto_0
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mMatch:I

    .line 7918
    const/4 v15, 0x0

    const-string v16, "set"

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7919
    .local v11, setCountStr:Ljava/lang/String;
    if-eqz v11, :cond_5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move v10, v15

    .line 7921
    .local v10, setCount:I
    :goto_1
    if-lez v10, :cond_6

    new-array v15, v10, [Ljava/lang/String;

    move-object v7, v15

    .line 7922
    .local v7, myPackages:[Ljava/lang/String;
    :goto_2
    if-lez v10, :cond_7

    new-array v15, v10, [Ljava/lang/String;

    move-object v5, v15

    .line 7923
    .local v5, myClasses:[Ljava/lang/String;
    :goto_3
    if-lez v10, :cond_8

    new-array v15, v10, [Ljava/lang/String;

    move-object v6, v15

    .line 7925
    .local v6, myComponents:[Ljava/lang/String;
    :goto_4
    const/4 v12, 0x0

    .line 7927
    .local v12, setPos:I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 7930
    .local v9, outerDepth:I
    :cond_1
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .local v14, type:I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_e

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v9, :cond_e

    .line 7932
    :cond_2
    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x4

    if-eq v14, v15, :cond_1

    .line 7937
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 7940
    .local v13, tagName:Ljava/lang/String;
    const-string v15, "set"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 7941
    const/4 v15, 0x0

    const-string v16, "name"

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7942
    .local v8, name:Ljava/lang/String;
    if-nez v8, :cond_9

    .line 7943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_3

    .line 7944
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No name in set tag in preferred activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    .line 7966
    :cond_3
    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 7917
    .end local v5           #myClasses:[Ljava/lang/String;
    .end local v6           #myComponents:[Ljava/lang/String;
    .end local v7           #myPackages:[Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #outerDepth:I
    .end local v10           #setCount:I
    .end local v11           #setCountStr:Ljava/lang/String;
    .end local v12           #setPos:I
    .end local v13           #tagName:Ljava/lang/String;
    .end local v14           #type:I
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 7919
    .restart local v11       #setCountStr:Ljava/lang/String;
    :cond_5
    const/4 v15, 0x0

    move v10, v15

    goto :goto_1

    .line 7921
    .restart local v10       #setCount:I
    :cond_6
    const/4 v15, 0x0

    move-object v7, v15

    goto :goto_2

    .line 7922
    .restart local v7       #myPackages:[Ljava/lang/String;
    :cond_7
    const/4 v15, 0x0

    move-object v5, v15

    goto :goto_3

    .line 7923
    .restart local v5       #myClasses:[Ljava/lang/String;
    :cond_8
    const/4 v15, 0x0

    move-object v6, v15

    goto :goto_4

    .line 7947
    .restart local v6       #myComponents:[Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #outerDepth:I
    .restart local v12       #setPos:I
    .restart local v13       #tagName:Ljava/lang/String;
    .restart local v14       #type:I
    :cond_9
    if-lt v12, v10, :cond_a

    .line 7948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_3

    .line 7949
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Too many set tags in preferred activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    goto :goto_6

    .line 7953
    :cond_a
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 7954
    .local v3, cn:Landroid/content/ComponentName;
    if-nez v3, :cond_b

    .line 7955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_3

    .line 7956
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad set name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " in preferred activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    goto :goto_6

    .line 7960
    :cond_b
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v7, v12

    .line 7961
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v12

    .line 7962
    aput-object v8, v6, v12

    .line 7963
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 7967
    .end local v3           #cn:Landroid/content/ComponentName;
    .end local v8           #name:Ljava/lang/String;
    :cond_c
    const-string v15, "filter"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 7969
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/PackageManagerService$PreferredActivity;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 7973
    :cond_d
    const/4 v15, 0x5

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown element under <preferred-activities>: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 7976
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 7980
    .end local v13           #tagName:Ljava/lang/String;
    :cond_e
    if-eq v12, v10, :cond_f

    .line 7981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_f

    .line 7982
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Not enough set tags (expected "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " but found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    .line 7987
    :cond_f
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetPackages:[Ljava/lang/String;

    .line 7988
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetClasses:[Ljava/lang/String;

    .line 7989
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetComponents:[Ljava/lang/String;

    .line 7990
    return-void
.end method


# virtual methods
.method sameSet(Ljava/util/List;I)Z
    .locals 11
    .parameter
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v10, 0x0

    .line 8008
    iget-object v8, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetPackages:[Ljava/lang/String;

    if-nez v8, :cond_0

    move v8, v10

    .line 8027
    :goto_0
    return v8

    .line 8009
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 8010
    .local v0, NQ:I
    iget-object v8, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetPackages:[Ljava/lang/String;

    array-length v1, v8

    .line 8011
    .local v1, NS:I
    const/4 v6, 0x0

    .line 8012
    .local v6, numMatch:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_5

    .line 8013
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 8014
    .local v7, ri:Landroid/content/pm/ResolveInfo;
    iget v8, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-eq v8, p2, :cond_2

    .line 8012
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 8015
    :cond_2
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 8016
    .local v2, ai:Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 8017
    .local v3, good:Z
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-ge v5, v1, :cond_3

    .line 8018
    iget-object v8, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v5

    iget-object v9, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetClasses:[Ljava/lang/String;

    aget-object v8, v8, v5

    iget-object v9, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 8020
    add-int/lit8 v6, v6, 0x1

    .line 8021
    const/4 v3, 0x1

    .line 8025
    :cond_3
    if-nez v3, :cond_1

    move v8, v10

    goto :goto_0

    .line 8017
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 8027
    .end local v2           #ai:Landroid/content/pm/ActivityInfo;
    .end local v3           #good:Z
    .end local v5           #j:I
    .end local v7           #ri:Landroid/content/pm/ResolveInfo;
    :cond_5
    if-ne v6, v1, :cond_6

    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    move v8, v10

    goto :goto_0
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 8
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v7, "name"

    const-string v6, "filter"

    const-string v5, "set"

    .line 7993
    iget-object v2, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetClasses:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetClasses:[Ljava/lang/String;

    array-length v2, v2

    move v0, v2

    .line 7994
    .local v0, NS:I
    :goto_0
    const-string v2, "name"

    iget-object v2, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    invoke-interface {p1, v4, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7995
    const-string v2, "match"

    iget v3, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mMatch:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7996
    const-string v2, "set"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7997
    const/4 v1, 0x0

    .local v1, s:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 7998
    const-string v2, "set"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7999
    const-string v2, "name"

    iget-object v2, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetComponents:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v4, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8000
    const-string v2, "set"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7997
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7993
    .end local v0           #NS:I
    .end local v1           #s:I
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 8002
    .restart local v0       #NS:I
    .restart local v1       #s:I
    :cond_1
    const-string v2, "filter"

    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8003
    invoke-super {p0, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 8004
    const-string v2, "filter"

    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8005
    return-void
.end method
