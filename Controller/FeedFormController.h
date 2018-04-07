/*
 * FeedFormController.h
 *
 * Created: 22 2018 by Ashley
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

#include "AbstractFormController.h"
#include "ui_FeedForm.h"

using namespace Ui;

class FeedFormController : public AbstractFormController
{
    Q_OBJECT
public:
    explicit FeedFormController(QWidget *parent = nullptr);
    ~FeedFormController() override;
    void setFormActive(bool active) override;
    void setupSignalSlots() override;
    void initialise() override;

signals:
    void feedOverrideChangedSignal(float);
    void updateFeedRateSignal(float);

public slots:
    void onFeedRateUpdate(float val);
    void onFeedSliderValueChanged(int value);
    void onFeedOverrideToggled(bool checked);

private:
    FeedForm mUi;
};
