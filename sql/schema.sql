USE [swing_trading_new]
GO
/****** Object:  Table [dbo].[AIRecommendations]    Script Date: 29/07/2025 09:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIRecommendations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ticker] [varchar](20) NULL,
	[tanggal] [date] NULL,
	[versi] [varchar](50) NULL,
	[rekomendasi] [varchar](50) NULL,
	[penjelasan] [text] NULL,
	[source_data] [text] NULL,
	[watchlist_id] [int] NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyPrice]    Script Date: 29/07/2025 09:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyPrice](
	[ticker] [varchar](20) NOT NULL,
	[tanggal] [date] NOT NULL,
	[open_price] [float] NULL,
	[high_price] [float] NULL,
	[low_price] [float] NULL,
	[close_price] [float] NULL,
	[volume] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ticker] ASC,
	[tanggal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExecutedTrades]    Script Date: 29/07/2025 09:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExecutedTrades](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ticker] [varchar](20) NULL,
	[tanggal_beli] [date] NULL,
	[harga_beli] [float] NULL,
	[jumlah_lot] [int] NULL,
	[tp] [float] NULL,
	[cl] [float] NULL,
	[status_posisi] [varchar](20) NULL,
	[tanggal_close] [date] NULL,
	[harga_close] [float] NULL,
	[watchlist_id] [int] NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreeningResults]    Script Date: 29/07/2025 09:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreeningResults](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ticker] [varchar](20) NULL,
	[tanggal] [date] NULL,
	[harga] [float] NULL,
	[ema8] [float] NULL,
	[ema20] [float] NULL,
	[ema50] [float] NULL,
	[rsi] [float] NULL,
	[volume] [bigint] NULL,
	[avg_volume] [bigint] NULL,
	[status_rekomendasi] [varchar](50) NULL,
	[prioritas] [int] NULL,
	[breakout_valid] [bit] NULL,
	[entry_type] [varchar](max) NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreeningResults_New]    Script Date: 29/07/2025 09:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreeningResults_New](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ticker] [varchar](20) NULL,
	[tanggal] [date] NULL,
	[harga] [float] NULL,
	[ema8] [float] NULL,
	[ema20] [float] NULL,
	[ema50] [float] NULL,
	[rsi] [float] NULL,
	[volume] [bigint] NULL,
	[avg_volume] [bigint] NULL,
	[prev_ema8] [float] NULL,
	[prev_ema20] [float] NULL,
	[prev_ema50] [float] NULL,
	[prev_rsi] [float] NULL,
	[prev_volume] [bigint] NULL,
	[prev_avg_volume] [bigint] NULL,
	[ema8_weekly] [float] NULL,
	[ema20_weekly] [float] NULL,
	[ema50_weekly] [float] NULL,
	[rsi_weekly] [float] NULL,
	[status_rekomendasi] [varchar](100) NULL,
	[prioritas] [int] NULL,
	[breakout_valid] [bit] NULL,
	[entry_type] [varchar](max) NULL,
	[high10] [float] NULL,
	[low10] [float] NULL,
	[created_at] [datetime] NULL,
	[resistance_level] [float] NULL,
	[jarum_detected] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_ticker_date] UNIQUE NONCLUSTERED 
(
	[ticker] ASC,
	[tanggal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WatchlistPersonal]    Script Date: 29/07/2025 09:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WatchlistPersonal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ticker] [varchar](20) NULL,
	[tanggal] [date] NULL,
	[harga] [float] NULL,
	[ema8] [float] NULL,
	[ema20] [float] NULL,
	[ema50] [float] NULL,
	[rsi] [float] NULL,
	[volume] [bigint] NULL,
	[avg_volume] [bigint] NULL,
	[prev_ema8] [float] NULL,
	[prev_ema20] [float] NULL,
	[prev_ema50] [float] NULL,
	[prev_rsi] [float] NULL,
	[prev_volume] [bigint] NULL,
	[prev_avg_volume] [bigint] NULL,
	[ema8_weekly] [float] NULL,
	[ema20_weekly] [float] NULL,
	[ema50_weekly] [float] NULL,
	[rsi_weekly] [float] NULL,
	[status_rekomendasi] [varchar](50) NULL,
	[prioritas] [int] NULL,
	[source_screening_id] [int] NULL,
	[manual_override] [bit] NULL,
	[created_at] [datetime] NULL,
	[trend_pendek] [varchar](max) NULL,
	[harga_vs_ema] [varchar](max) NULL,
	[weekly_valid] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WatchlistPersonal_New]    Script Date: 29/07/2025 09:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WatchlistPersonal_New](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ticker] [varchar](20) NULL,
	[tanggal] [date] NULL,
	[harga] [float] NULL,
	[ema8] [float] NULL,
	[ema20] [float] NULL,
	[ema50] [float] NULL,
	[rsi] [float] NULL,
	[volume] [bigint] NULL,
	[avg_volume] [bigint] NULL,
	[prev_ema8] [float] NULL,
	[prev_ema20] [float] NULL,
	[prev_ema50] [float] NULL,
	[prev_rsi] [float] NULL,
	[prev_volume] [bigint] NULL,
	[prev_avg_volume] [bigint] NULL,
	[ema8_weekly] [float] NULL,
	[ema20_weekly] [float] NULL,
	[ema50_weekly] [float] NULL,
	[rsi_weekly] [float] NULL,
	[high10] [float] NULL,
	[low10] [float] NULL,
	[status_rekomendasi] [varchar](50) NULL,
	[prioritas] [int] NULL,
	[source_screening_id] [int] NULL,
	[manual_override] [bit] NULL,
	[created_at] [datetime] NULL,
	[trend_pendek] [varchar](max) NULL,
	[harga_vs_ema] [varchar](max) NULL,
	[weekly_valid] [varchar](max) NULL,
	[entry_type] [varchar](50) NULL,
	[resistance_level] [float] NULL,
	[jarum_detected] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AIRecommendations] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ExecutedTrades] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ScreeningResults] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ScreeningResults_New] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[WatchlistPersonal] ADD  DEFAULT ((0)) FOR [manual_override]
GO
ALTER TABLE [dbo].[WatchlistPersonal] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[WatchlistPersonal_New] ADD  DEFAULT ((0)) FOR [manual_override]
GO
ALTER TABLE [dbo].[WatchlistPersonal_New] ADD  DEFAULT (getdate()) FOR [created_at]
GO
