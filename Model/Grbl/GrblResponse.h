/*
 * GrblResponse.h
 *
 * Created: 03 2018 by Ashley
 *
 * Copyright 2018 Octronic. All rights reserved.
 *
 * This file may be distributed under the terms of GNU Public License version
 * 3 (GPL v3) as defined by the Free Software Foundation (FSF). A copy of the
 * license should have been included with this file, or the project in which
 * this file belongs to. You may also find the details of GPL v3 at:
 * http://www.gnu.org/licenses/gpl-3.0.txt
 *
 * If you have any questions regarding the use of this file, feel free to
 * contact the author of this file, or the owner of the project in which
 * this file belongs to.
 */
#pragma once

#include <QString>
#include <QMetaType>

enum class GrblResponseType
{
    Startup,
    Ok,
    Error,
    Alarm,
    Locked,
    Unlocked,
    Enabled,
    Disabled,
    Probe,
    ParserState,
    SpindleSpeed,
    Status,
    Help,
    Configuration,
    None
};


class GrblResponse
{
public:
    GrblResponse();
    GrblResponse(QString response);
    GrblResponse(const GrblResponse& other);
    ~GrblResponse();
    GrblResponseType getType() const;
    QString getData() const;
private:
    void identifyType();
    QString mData;
    GrblResponseType mType;
};

Q_DECLARE_METATYPE(GrblResponse)
Q_DECLARE_METATYPE(GrblResponseType)
