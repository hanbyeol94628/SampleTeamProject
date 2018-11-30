CREATE TABLE `user` (
	`id`	VARCHAR(255)	NOT NULL,
	`name`	VARCHAR(255)	NULL,
	`phone`	VARCHAR(255)	NULL,
	`email`	VARCHAR(255)	NULL,
	`addr`	VARCHAR(255)	NULL,
	`user_id`	VARCHAR(255)	NULL,
	`user_pw`	VARCHAR(255)	NULL,
	`create_date`	VARCHAR(255)	NULL,
	`update_date`	VARCHAR(255)	NULL,
	`valid`	VARCHAR(255)	NULL,
	`rank`	VARCHAR(255)	NULL,
	`point`	VARCHAR(255)	NULL,
	`ip`	VARCHAR(255)	NULL
);

CREATE TABLE `product` (
	`id`	VARCHAR(255)	NOT NULL,
	`img_file_id`	VARCHAR(255)	NOT NULL,
	`category_id`	VARCHAR(255)	NOT NULL,
	`description_text`	VARCHAR(255)	NULL,
	`start_date`	VARCHAR(255)	NULL,
	`end_date`	VARCHAR(255)	NULL,
	`seller_id`	VARCHAR(255)	NULL,
	`coupon_id`	VARCHAR(255)	NULL,
	`create_date`	VARCHAR(255)	NULL,
	`update_date`	VARCHAR(255)	NULL,
	`selling_count`	VARCHAR(255)	NULL,
	`delivery_charge`	VARCHAR(255)	NULL,
	`event`	VARCHAR(255)	NULL,
	`view_count`	VARCHAR(255)	NULL
);

CREATE TABLE `seller` (
	`id`	VARCHAR(255)	NOT NULL,
	`name`	VARCHAR(255)	NULL,
	`phone`	VARCHAR(255)	NULL,
	`email`	VARCHAR(255)	NULL,
	`create_date`	VARCHAR(255)	NULL,
	`update_date`	VARCHAR(255)	NULL,
	`account`	VARCHAR(255)	NULL,
	`seller_id`	VARCHAR(255)	NULL,
	`seller_pw`	VARCHAR(255)	NULL,
	`credit_rate`	VARCHAR(255)	NULL,
	`description`	VARCHAR(255)	NULL
);

CREATE TABLE `purchased_product` (
	`id`	VARCHAR(255)	NOT NULL,
	`user_id`	VARCHAR(255)	NOT NULL,
	`option_id`	VARCHAR(255)	NOT NULL,
	`count`	VARCHAR(255)	NULL,
	`refund`	VARCHAR(255)	NULL,
	`exchange`	VARCHAR(255)	NULL,
	`product_id`	VARCHAR(255)	NULL
);

CREATE TABLE `product_option` (
	`id`	VARCHAR(255)	NOT NULL,
	`product_id`	VARCHAR(255)	NOT NULL,
	`option_name`	VARCHAR(255)	NULL,
	`price`	VARCHAR(255)	NULL,
	`available_num`	VARCHAR(255)	NULL
);

CREATE TABLE `coupon` (
	`id`	VARCHAR(255)	NOT NULL,
	`coupon_name`	VARCHAR(255)	NULL,
	`description`	VARCHAR(255)	NULL,
	`discount_rate`	VARCHAR(255)	NULL,
	`start_date`	VARCHAR(255)	NULL,
	`expire_date`	VARCHAR(255)	NULL
);

CREATE TABLE `user_comment` (
	`id`	VARCHAR(255)	NOT NULL,
	`parent_comment_id`	VARCHAR(255)	NOT NULL,
	`user_id`	VARCHAR(255)	NOT NULL,
	`product_id`	VARCHAR(255)	NOT NULL,
	`comment`	VARCHAR(255)	NULL,
	`star_score`	VARCHAR(255)	NULL
);

CREATE TABLE `category` (
	`id`	VARCHAR(255)	NOT NULL,
	`parent_category_id`	VARCHAR(255)	NOT NULL,
	`depth`	VARCHAR(255)	NULL
);

CREATE TABLE `user_delivery` (
	`id`	VARCHAR(255)	NOT NULL,
	`product_id`	VARCHAR(255)	NOT NULL,
	`user_id`	VARCHAR(255)	NOT NULL,
	`delivery_stage`	VARCHAR(255)	NULL,
	`delivery_charge`	VARCHAR(255)	NULL
);

CREATE TABLE `user_interest_product` (
	`user_id`	VARCHAR(255)	NOT NULL,
	`product_id`	VARCHAR(255)	NOT NULL
);

CREATE TABLE `user_login` (
	`id`	VARCHAR(255)	NOT NULL,
	`user_id`	VARCHAR(255)	NOT NULL,
	`expire`	VARCHAR(255)	NULL
);

CREATE TABLE `promotion` (
	`id`	VARCHAR(255)	NOT NULL,
	`img_file_id`	VARCHAR(255)	NOT NULL,
	`title`	VARCHAR(255)	NULL,
	`description`	VARCHAR(255)	NULL,
	`product_id`	VARCHAR(255)	NULL
);

CREATE TABLE `img_file` (
	`id`	VARCHAR(255)	NOT NULL,
	`name`	VARCHAR(255)	NULL,
	`location`	VARCHAR(255)	NULL,
	`type`	VARCHAR(255)	NULL,
	`size`	VARCHAR(255)	NULL,
	`crate_date`	VARCHAR(255)	NULL,
	`update_date`	VARCHAR(255)	NULL
);

CREATE TABLE `oauth_id` (
	`id`	VARCHAR(255)	NOT NULL,
	`user_id`	VARCHAR(255)	NOT NULL,
	`token`	VARCHAR(255)	NULL,
	`provider`	VARCHAR(255)	NULL,
	`expire`	VARCHAR(255)	NULL
);

CREATE TABLE `user_comment_img` (
	`user_comment_id`	VARCHAR(255)	NOT NULL,
	`file_id`	VARCHAR(255)	NOT NULL
);

CREATE TABLE `product_question` (
	`id`	VARCHAR(255)	NOT NULL,
	`user_id`	VARCHAR(255)	NOT NULL,
	`title`	VARCHAR(255)	NULL,
	`content`	VARCHAR(255)	NULL,
	`product_id`	VARCHAR(255)	NULL,
	`create_date`	VARCHAR(255)	NULL,
	`update_date`	VARCHAR(255)	NULL,
	`secret`	VARCHAR(255)	NULL,
	`view_count`	VARCHAR(255)	NULL
);

CREATE TABLE `product_answer` (
	`id`	VARCHAR(255)	NOT NULL,
	`product_question_id`	VARCHAR(255)	NOT NULL,
	`title`	VARCHAR(255)	NULL,
	`content`	VARCHAR(255)	NULL,
	`create_date`	VARCHAR(255)	NULL,
	`update_date`	VARCHAR(255)	NULL,
	`adviser_id`	VARCHAR(255)	NULL
);

CREATE TABLE `event` (
	`id`	VARCHAR(255)	NOT NULL,
	`img_file_id`	VARCHAR(255)	NOT NULL,
	`title`	VARCHAR(255)	NULL,
	`description`	VARCHAR(255)	NULL
);

CREATE TABLE `user_coupon` (
	`user_id`	VARCHAR(255)	NOT NULL,
	`coupon_id`	VARCHAR(255)	NOT NULL
);

CREATE TABLE `bascket` (
	`id`	VARCHAR(255)	NOT NULL,
	`user_id`	VARCHAR(255)	NOT NULL,
	`option_id`	VARCHAR(255)	NOT NULL,
	`count`	VARCHAR(255)	NULL
);

CREATE TABLE `seller_product` (
	`seller_id`	VARCHAR(255)	NOT NULL,
	`product_id`	VARCHAR(255)	NOT NULL
);

CREATE TABLE `question` (
	`id`	VARCHAR(255)	NOT NULL,
	`user_id`	VARCHAR(255)	NOT NULL,
	`product_id`	VARCHAR(255)	NOT NULL,
	`title`	VARCHAR(255)	NULL,
	`content`	VARCHAR(255)	NULL,
	`create_date`	VARCHAR(255)	NULL,
	`update_date`	VARCHAR(255)	NULL,
	`secret`	VARCHAR(255)	NULL
);

CREATE TABLE `answer` (
	`id`	VARCHAR(255)	NOT NULL,
	`question_id`	VARCHAR(255)	NOT NULL,
	`title`	VARCHAR(255)	NULL,
	`content`	VARCHAR(255)	NULL,
	`create_date`	VARCHAR(255)	NULL,
	`update_date`	VARCHAR(255)	NULL,
	`seller_id`	VARCHAR(255)	NULL
);

ALTER TABLE `user` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
	`id`
);

ALTER TABLE `product` ADD CONSTRAINT `PK_PRODUCT` PRIMARY KEY (
	`id`
);

ALTER TABLE `seller` ADD CONSTRAINT `PK_SELLER` PRIMARY KEY (
	`id`
);

ALTER TABLE `purchased_product` ADD CONSTRAINT `PK_PURCHASED_PRODUCT` PRIMARY KEY (
	`id`
);

ALTER TABLE `product_option` ADD CONSTRAINT `PK_PRODUCT_OPTION` PRIMARY KEY (
	`id`
);

ALTER TABLE `coupon` ADD CONSTRAINT `PK_COUPON` PRIMARY KEY (
	`id`
);

ALTER TABLE `user_comment` ADD CONSTRAINT `PK_USER_COMMENT` PRIMARY KEY (
	`id`
);

ALTER TABLE `category` ADD CONSTRAINT `PK_CATEGORY` PRIMARY KEY (
	`id`
);

ALTER TABLE `user_delivery` ADD CONSTRAINT `PK_USER_DELIVERY` PRIMARY KEY (
	`id`
);

ALTER TABLE `user_interest_product` ADD CONSTRAINT `PK_USER_INTEREST_PRODUCT` PRIMARY KEY (
	`user_id`,
	`product_id`
);

ALTER TABLE `user_login` ADD CONSTRAINT `PK_USER_LOGIN` PRIMARY KEY (
	`id`
);

ALTER TABLE `promotion` ADD CONSTRAINT `PK_PROMOTION` PRIMARY KEY (
	`id`
);

ALTER TABLE `img_file` ADD CONSTRAINT `PK_IMG_FILE` PRIMARY KEY (
	`id`
);

ALTER TABLE `oauth_id` ADD CONSTRAINT `PK_OAUTH_ID` PRIMARY KEY (
	`id`
);

ALTER TABLE `user_comment_img` ADD CONSTRAINT `PK_USER_COMMENT_IMG` PRIMARY KEY (
	`user_comment_id`,
	`file_id`
);

ALTER TABLE `product_question` ADD CONSTRAINT `PK_PRODUCT_QUESTION` PRIMARY KEY (
	`id`
);

ALTER TABLE `product_answer` ADD CONSTRAINT `PK_PRODUCT_ANSWER` PRIMARY KEY (
	`id`
);

ALTER TABLE `event` ADD CONSTRAINT `PK_EVENT` PRIMARY KEY (
	`id`
);

ALTER TABLE `user_coupon` ADD CONSTRAINT `PK_USER_COUPON` PRIMARY KEY (
	`user_id`,
	`coupon_id`
);

ALTER TABLE `bascket` ADD CONSTRAINT `PK_BASCKET` PRIMARY KEY (
	`id`
);

ALTER TABLE `seller_product` ADD CONSTRAINT `PK_SELLER_PRODUCT` PRIMARY KEY (
	`seller_id`,
	`product_id`
);

ALTER TABLE `question` ADD CONSTRAINT `PK_QUESTION` PRIMARY KEY (
	`id`
);

ALTER TABLE `answer` ADD CONSTRAINT `PK_ANSWER` PRIMARY KEY (
	`id`
);

ALTER TABLE `user_interest_product` ADD CONSTRAINT `FK_user_TO_user_interest_product_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `user` (
	`id`
);

ALTER TABLE `user_interest_product` ADD CONSTRAINT `FK_product_TO_user_interest_product_1` FOREIGN KEY (
	`product_id`
)
REFERENCES `product` (
	`id`
);

ALTER TABLE `user_comment_img` ADD CONSTRAINT `FK_user_comment_TO_user_comment_img_1` FOREIGN KEY (
	`user_comment_id`
)
REFERENCES `user_comment` (
	`id`
);

ALTER TABLE `user_comment_img` ADD CONSTRAINT `FK_img_file_TO_user_comment_img_1` FOREIGN KEY (
	`file_id`
)
REFERENCES `img_file` (
	`id`
);

ALTER TABLE `user_coupon` ADD CONSTRAINT `FK_user_TO_user_coupon_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `user` (
	`id`
);

ALTER TABLE `user_coupon` ADD CONSTRAINT `FK_coupon_TO_user_coupon_1` FOREIGN KEY (
	`coupon_id`
)
REFERENCES `coupon` (
	`id`
);

ALTER TABLE `seller_product` ADD CONSTRAINT `FK_seller_TO_seller_product_1` FOREIGN KEY (
	`seller_id`
)
REFERENCES `seller` (
	`id`
);

ALTER TABLE `seller_product` ADD CONSTRAINT `FK_product_TO_seller_product_1` FOREIGN KEY (
	`product_id`
)
REFERENCES `product` (
	`id`
);

